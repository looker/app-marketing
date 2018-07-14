include: "ad_metrics_base.view"

view: fb_ad_metrics_base {
  extension: required
  extends: [ad_metrics_base]

  dimension: frequency {
    hidden: yes
    type: number
    value_format_name: decimal_1
  }

  measure: weighted_average_frequency {
    label: "Average Frequency"
    description: "Average Frequency."
    type: number
    sql: SUM(${frequency}*${impressions}) / NULLIF(${total_impressions},0) ;;
#     expression: sum(${frequency}*${impressions}) / NULLIF(${total_impressions},0) ;;
    value_format_name: decimal_1
  }
}
