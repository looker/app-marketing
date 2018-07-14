include: "ad_metrics_period_comparison_base.view"
include: "date_base.view"
include: "date_primary_key_base.view"
include: "fb_ad_metrics_base.view"
include: "fb_ad_impressions.view"
include: "period_base.view"

explore: fb_account_date_fact {
  persist_with: facebook_ads_etl_datagroup
  hidden: yes
  from: fb_account_date_fact
  view_name: fact
  label: "Account This Period"
  view_label: "Account This Period"
  join: last_fact {
    from: fb_account_date_fact
    view_label: "Account Prior Period"
    sql_on: ${fact.account_id} = ${last_fact.account_id} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
    relationship: one_to_one
  }
}

view: fb_account_key_base {
  extends: [date_primary_key_base]
  extension: required

  dimension: account_key_base {
    hidden: yes
    sql: ${account_id} ;;
  }
  dimension: key_base {
    hidden: yes
    sql: ${account_key_base} ;;
  }
}

view: fb_account_date_fact {
  extends: [date_base, period_base, fb_ad_metrics_base, fb_account_key_base, ad_metrics_period_comparison_base]

  derived_table: {
    datagroup_trigger: facebook_ads_etl_datagroup
    explore_source: fb_ad_impressions {
      column: _date { field: fact.date_date }
      column: account_id { field: fact.account_id }
      column: account_name { field: fact.account_name }
      column: clicks {field: fact.total_clicks }
      column: conversions {field: fact.total_conversions}
      column: conversionvalue {field: fact.total_conversionvalue}
      column: cost {field: fact.total_cost}
      column: impressions { field: fact.total_impressions}
    }
  }
  dimension: account_id {
    hidden: yes
  }
  dimension: account_name {
#     required_fields: [account_id]
  }
  dimension: _date {
    hidden: yes
    type: date_raw
  }
}
