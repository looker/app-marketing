include: "ad_impressions.view"
include: "ad_metrics_base.view"
include: "date_base.view"
include: "fb_ad_impressions.view"
include: "period_base.view"

view: combined_ad_impressions_base {
  extends: [ad_metrics_base, date_base, period_base]

  dimension: _date {
    hidden: yes
    type: date_raw
  }
  dimension: account_id {
    hidden: yes
  }
  dimension: campaign_id {
    hidden: yes
  }
  dimension: ad_group_id {
    hidden: yes
  }
}

explore: google_adwords_ad_impressions {
  persist_with: adwords_etl_datagroup
  hidden: yes
  from: google_adwords_ad_impressions
  view_name: fact
}

view: google_adwords_ad_impressions {
  extends: [combined_ad_impressions_base]

  derived_table: {
    datagroup_trigger: adwords_etl_datagroup
    explore_source: ad_impressions_ad_group {
      column: _date { field: fact.date_date}
      column: account_id { field: fact.external_customer_id_string }
      column: campaign_id { field: fact.campaign_id_string }
      column: ad_group_id { field: fact.ad_group_id_string }
      column: cost { field: fact.total_cost }
      column: impressions { field: fact.total_impressions }
      column: clicks { field: fact.total_clicks }
      column: conversions { field: fact.total_conversions }
      column: conversionvalue { field: fact.total_conversionvalue }
    }
  }
}

explore: facebook_ad_impressions {
  persist_with: facebook_ads_etl_datagroup
  hidden: yes
  from: facebook_ad_impressions
  view_name: fact
}

view: facebook_ad_impressions {
  extends: [combined_ad_impressions_base]

  derived_table: {
    datagroup_trigger: facebook_ads_etl_datagroup
    explore_source: fb_ad_impressions {
      column: _date { field: fact.date_date}
      column: account_id { field: fact.account_id }
      column: campaign_id { field: fact.campaign_id }
      column: ad_group_id { field: fact.adset_id }
      column: cost { field: fact.total_cost }
      column: impressions { field: fact.total_impressions }
      column: clicks { field: fact.total_clicks }
      column: conversions { field: fact.total_conversions }
      column: conversionvalue { field: fact.total_conversionvalue }
    }
  }
}

explore: combined_ad_impressions {
  persist_with: ama_etl_datagroup
  hidden: yes
  from: combined_ad_impressions
  view_name: fact
}
view: combined_ad_impressions {
  extends: [combined_ad_impressions_base]

  derived_table: {
    datagroup_trigger: ama_etl_datagroup
    sql:
      SELECT
         "Google AdWords" as channel,
          google_adwords_ad_impressions.account_id AS account_id,
          google_adwords_ad_impressions.ad_group_id AS ad_group_id,
          google_adwords_ad_impressions.campaign_id AS campaign_id,
          google_adwords_ad_impressions._date AS _date,
          google_adwords_ad_impressions.Impressions AS impressions,
          google_adwords_ad_impressions.Cost AS cost,
          google_adwords_ad_impressions.Conversions AS conversions,
          google_adwords_ad_impressions.Clicks AS clicks,
          google_adwords_ad_impressions.ConversionValue AS conversionvalue
       FROM ${google_adwords_ad_impressions.SQL_TABLE_NAME} as google_adwords_ad_impressions
       UNION ALL
       SELECT
         "Facebook" as channel,
          facebook_ad_impressions.account_id AS account_id,
          facebook_ad_impressions.ad_group_id AS ad_group_id,
          facebook_ad_impressions.campaign_id AS campaign_id,
          facebook_ad_impressions._date AS _date,
          facebook_ad_impressions.Impressions AS impressions,
          facebook_ad_impressions.Cost AS cost,
          facebook_ad_impressions.Conversions AS conversions,
          facebook_ad_impressions.Clicks AS clicks,
          facebook_ad_impressions.ConversionValue AS conversionvalue
       FROM ${facebook_ad_impressions.SQL_TABLE_NAME} as facebook_ad_impressions ;;
  }
  dimension: channel {}
}
