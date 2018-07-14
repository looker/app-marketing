include: "ad_metrics_base.view"
include: "date_base.view"
include: "period_base.view"

explore: combined_ad_group_date_fact {
  persist_with: ama_etl_datagroup
  hidden: yes
  from: combined_ad_group_date_fact
  view_name: fact
  label: "Combined Ad Group Date Fact"
  view_label: "This Period"

  join: last_fact {
    from: combined_ad_group_date_fact
    view_label: "Prior Period"
    sql_on: ${fact.account_id} = ${last_fact.account_id} AND
      ${fact.campaign_id} = ${last_fact.campaign_id} AND
      ${fact.ad_group_id} = ${last_fact.ad_group_id} AND
      ${fact.date_last_period} = ${last_fact.date_period} AND
      ${fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
    relationship: one_to_one
  }

  # TODO make these depend on channel
  # If channel = google adwords then
  # join: customer {
  #   view_label: "Customer"
  #   sql_on: ${fact.account_id} = ${customer.account_id} AND
  #     ${fact.date_date} = ${customer.date_date} ;;
  #   relationship: many_to_one
  # }
  # join: campaign {
  #   view_label: "Campaign"
  #   sql_on: ${fact.campaign_id} = ${combined_fact.campaign_id} AND
  #     ${fact.date_date} = ${combined_fact.date_date} ;;
  #   relationship: many_to_one
  # }
  # join: ad_group {
  #   view_label: "Ad Group"
  #   sql_on: ${fact.ad_group_id} = ${combined_fact.ad_group_id} AND
  #     ${fact.date_date} = ${combined_fact.date_date}  ;;
  #   relationship: many_to_one
  # }
  # If channel = facebook_ads then
  # join: campaigns {
  #   type: left_outer
  #   sql_on: ${fact.campaign_id} = ${campaigns.id} ;;
  #   relationship: many_to_one
  # }

  # join: adsets {
  #   type: left_outer
  #   sql_on: ${fact.adset_id} = ${adsets.id} ;;
  #   relationship: many_to_one
  # }
}

view: combined_ad_group_date_fact {
  extends: [ad_metrics_base, date_base, period_base]

  derived_table: {
    datagroup_trigger: ama_etl_datagroup
    explore_source: combined_ad_impressions {
      column: _date { field: fact.date_date }
      column: channel { field: fact.channel }
      column: account_id { field: fact.account_id }
      column: campaign_id { field: fact.campaign_id }
      column: ad_group_id { field: fact.ad_group_id }
      column: clicks { field: fact.total_clicks }
      column: conversions { field: fact.total_conversions }
      column: conversionvalue { field: fact.total_conversionvalue }
      column: cost { field: fact.total_cost }
      column: impressions { field: fact.total_impressions }
    }
  }
  dimension: _date {
    hidden: yes
    type: date_raw
  }
  dimension: channel {}
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
