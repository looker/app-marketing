include: "/ama_fb_adapter/account.view"
include: "/ama_fb_adapter/campaign.view"
include: "/ama_fb_adapter/adset.view"
include: "/ama_fb_adapter/ad.view"

include: "ad_metrics_period_comparison_base.view"
include: "date_base.view"
include: "fb_ad_metrics_base.view"
include: "period_base.view"

explore: fb_period_fact {
  persist_with: facebook_ads_etl_datagroup
  hidden: yes
  from: fb_period_fact
  view_name: fact
  label: "This Period"
  view_label: "This Period"

  join: account {
    from: account_fb_adapter
    view_label: "Account"
    type: left_outer
    sql_on: ${fact.account_id} = ${account.id} ;;
    relationship: many_to_one
  }

  join: campaign {
    from: campaign_fb_adapter
    view_label: "Campaign"
    type: left_outer
    sql_on: ${fact.campaign_id} = ${campaign.id} ;;
    relationship: many_to_one
  }

  join: adset {
    from: adset_fb_adapter
    view_label: "Adset"
    type: left_outer
    sql_on: ${fact.adset_id} = ${adset.id} ;;
    relationship: many_to_one
  }

  join: ad {
    from: ad_fb_adapter
    view_label: "Ad"
    type: left_outer
    sql_on: ${fact.ad_id} = ${ad.id} ;;
    relationship: many_to_one
  }

  join: last_fact {
    from: fb_period_fact
    view_label: "Prior Period"
    sql_on:
    ${fact.date_last_period} = ${last_fact.date_period}
    AND ${fact.date_day_of_period} = ${last_fact.date_day_of_period}
    {% if (ad._in_query or fact.ad_id._in_query) %}
      AND ${fact.ad_id} = ${last_fact.ad_id}
    {% elsif (adset._in_query or fact.adset_id._in_query) or (ad._in_query or fact.ad_id._in_query) %}
      AND ${fact.adset_id} = ${last_fact.adset_id}
    {% elsif (campaign._in_query or fact.campaign_id._in_query) or (adset._in_query or fact.adset_id._in_query) or (ad._in_query or fact.ad_id._in_query) %}
      AND ${fact.campaign_id} = ${last_fact.campaign_id}
    {% endif %}
    AND ${fact.account_id} = ${last_fact.account_id} ;;
    relationship: one_to_one
  }
}

view: fb_period_fact {
  extends: [date_base, period_base, ad_metrics_period_comparison_base, fb_ad_metrics_base]

  sql_table_name:
    {% if (ad._in_query or fact.ad_id._in_query) %}
      ${fb_ad_date_fact.SQL_TABLE_NAME}
    {% elsif (adset._in_query or fact.adset_id._in_query) %}
      ${fb_adset_date_fact.SQL_TABLE_NAME}
    {% elsif (campaign._in_query or fact.campaign_id._in_query) %}
      ${fb_campaign_date_fact.SQL_TABLE_NAME}
    {% else %}
      ${fb_account_date_fact.SQL_TABLE_NAME}
    {% endif %} ;;

    dimension: account_id {
      hidden: yes
    }
    dimension: campaign_id {
      hidden: yes
    }
    dimension: adset_id {
      hidden: yes
    }
    dimension: ad_id {
      hidden: yes
    }
    dimension: criterion_id {
      hidden: yes
    }
    dimension: _date {
      type: date_raw
    }

    dimension: key_base {
      hidden: yes
      sql:
      CONCAT(
        CAST(${account_id} AS STRING),
      {% if (campaign._in_query or fact.campaign_id._in_query or adset._in_query or fact.adset_id._in_query or ad._in_query or fact.ad_id._in_query %}
        "-", CAST(${campaign_id} AS STRING),
      {% endif %}
      {% if (adset._in_query or fact.adset_id._in_query or ad._in_query or fact.ad_id._in_query %}
        "-", CAST(${adset_id} AS STRING),
      {% endif %}
      {% if (ad._in_query or fact.adset_id._in_query) %}
        "-", CAST(${ad_id} AS STRING)
      {% endif %}
      ) ;;
    }

    dimension: primary_key {
      primary_key: yes
      hidden: yes
      sql: concat(CAST(${date_period} AS STRING)
              , "|", ${date_day_of_period},
              , "|", ${key_base}
            ) ;;
    }
  }
