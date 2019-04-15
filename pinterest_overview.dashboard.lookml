- dashboard: pinterest_overview
  title: Pinterest Overview
  elements:
  - title: Spend
    name: Spend
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: single_value
    fields: [fact.total_cost, last_fact.total_cost, fact.total_conversions,
      last_fact.total_conversions, fact.average_cost_per_conversion, last_fact.average_cost_per_conversion,
      fact.average_conversion_rate, last_fact.average_conversion_rate, fact.average_click_rate,
      last_fact.average_click_rate, fact.cost_per_click, last_fact.cost_per_click]
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [cost_per_conversion_percent_change]
    limit: 500
    dynamic_fields: [{table_calculation: cost_change, label: Cost Change, expression: "${fact.total_cost}\
          \ - ${last_fact.total_cost}", value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: total_conversion_change,
        label: Total Conversion Change, expression: "${fact.total_conversions} - ${last_fact.total_conversions}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_conversion_percent_change,
        label: Cost Per Conversion Percent Change, expression: "${fact.average_cost_per_conversion}\
          \ - ${last_fact.average_cost_per_conversion}", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}, {
        table_calculation: cost_per_click_percent_change, label: Cost Per Click Percent
          Change, expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
          \ / ${last_fact.average_cost_per_conversion}", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}, {
        table_calculation: conversion_rate_percent_change, label: Conversion Rate
          Percent Change, expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
          \ / ${last_fact.average_conversion_rate}", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: click_through_rate_percent_change,
        label: Click Through Rate Percent Change, expression: "(${fact.average_click_rate}\
          \ - ${last_fact.average_click_rate}) / ${last_fact.average_click_rate}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/New_York
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    hidden_fields: [last_fact.total_cost, fact.total_conversions, last_fact.total_conversions,
      fact.average_click_rate, last_fact.average_click_rate, fact.average_conversion_rate,
      fact.average_cost_per_conversion, last_fact.average_cost_per_conversion,
      last_fact.cost_per_click, fact.cost_per_click, last_fact.average_conversion_rate,
      total_conversion_change]
    row: 0
    col: 0
    width: 9
    height: 3
  - title: Conversions
    name: Conversions
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: single_value
    fields: [fact.total_cost, last_fact.total_cost, fact.total_conversions,
      last_fact.total_conversions, fact.average_cost_per_conversion, last_fact.average_cost_per_conversion,
      fact.average_conversion_rate, last_fact.average_conversion_rate, fact.average_click_rate,
      last_fact.average_click_rate, fact.cost_per_click, last_fact.cost_per_click]
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [cost_per_conversion_percent_change]
    limit: 500
    dynamic_fields: [{table_calculation: cost_change, label: Cost Change, expression: "${fact.total_cost}\
          \ - ${last_fact.total_cost}", value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: total_conversion_change,
        label: Total Conversion Change, expression: "${fact.total_conversions} - ${last_fact.total_conversions}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_conversion_percent_change,
        label: Cost Per Conversion Percent Change, expression: "${fact.average_cost_per_conversion}\
          \ - ${last_fact.average_cost_per_conversion}", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}, {
        table_calculation: cost_per_click_percent_change, label: Cost Per Click Percent
          Change, expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
          \ / ${last_fact.average_cost_per_conversion}", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}, {
        table_calculation: conversion_rate_percent_change, label: Conversion Rate
          Percent Change, expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
          \ / ${last_fact.average_conversion_rate}", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: click_through_rate_percent_change,
        label: Click Through Rate Percent Change, expression: "(${fact.average_click_rate}\
          \ - ${last_fact.average_click_rate}) / ${last_fact.average_click_rate}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/New_York
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_fields: [last_fact.total_cost, last_fact.total_conversions, fact.average_click_rate,
      last_fact.average_click_rate, fact.average_conversion_rate, fact.average_cost_per_conversion,
      last_fact.average_cost_per_conversion, last_fact.cost_per_click,
      fact.cost_per_click, last_fact.average_conversion_rate, fact.total_cost,
      cost_change]
    row: 0
    col: 9
    width: 5
    height: 3
  - title: Per Conversion
    name: Per Conversion
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: single_value
    fields: [fact.total_cost, last_fact.total_cost, fact.total_conversions,
      last_fact.total_conversions, fact.average_cost_per_conversion, last_fact.average_cost_per_conversion,
      fact.average_conversion_rate, last_fact.average_conversion_rate, fact.average_click_rate,
      last_fact.average_click_rate, fact.cost_per_click, last_fact.cost_per_click]
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [cost_per_conversion_percent_change]
    limit: 500
    dynamic_fields: [{table_calculation: cost_change, label: Cost Change, expression: "${fact.total_cost}\
          \ - ${last_fact.total_cost}", value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: total_conversion_change,
        label: Total Conversion Change, expression: "${fact.total_conversions} - ${last_fact.total_conversions}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_conversion_percent_change,
        label: Cost Per Conversion Percent Change, expression: "${fact.average_cost_per_conversion}\
          \ - ${last_fact.average_cost_per_conversion}", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}, {
        table_calculation: cost_per_click_percent_change, label: Cost Per Click Percent
          Change, expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
          \ / ${last_fact.average_cost_per_conversion}", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}, {
        table_calculation: conversion_rate_percent_change, label: Conversion Rate
          Percent Change, expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
          \ / ${last_fact.average_conversion_rate}", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: click_through_rate_percent_change,
        label: Click Through Rate Percent Change, expression: "(${fact.average_click_rate}\
          \ - ${last_fact.average_click_rate}) / ${last_fact.average_click_rate}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/New_York
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    hidden_fields: [last_fact.total_cost, last_fact.total_conversions, fact.average_click_rate,
      last_fact.average_click_rate, fact.average_conversion_rate, last_fact.average_cost_per_conversion,
      last_fact.cost_per_click, fact.cost_per_click, last_fact.average_conversion_rate,
      fact.total_cost, cost_change, fact.total_conversions, total_conversion_change,
      cost_per_click_percent_change, conversion_rate_percent_change, click_through_rate_percent_change]
    row: 0
    col: 14
    width: 5
    height: 3
  - title: Conversion Rate
    name: Conversion Rate
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: single_value
    fields: [fact.total_cost, last_fact.total_cost, fact.total_conversions,
      last_fact.total_conversions, fact.average_cost_per_conversion, last_fact.average_cost_per_conversion,
      fact.average_conversion_rate, last_fact.average_conversion_rate, fact.average_click_rate,
      last_fact.average_click_rate, fact.cost_per_click, last_fact.cost_per_click]
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [cost_per_conversion_percent_change]
    limit: 500
    dynamic_fields: [{table_calculation: cost_change, label: Cost Change, expression: "${fact.total_cost}\
          \ - ${last_fact.total_cost}", value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: total_conversion_change,
        label: Total Conversion Change, expression: "${fact.total_conversions} - ${last_fact.total_conversions}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_conversion_percent_change,
        label: Cost Per Conversion Percent Change, expression: "${fact.average_cost_per_conversion}\
          \ - ${last_fact.average_cost_per_conversion}", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}, {
        table_calculation: cost_per_click_percent_change, label: Cost Per Click Percent
          Change, expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
          \ / ${last_fact.average_cost_per_conversion}", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}, {
        table_calculation: conversion_rate_percent_change, label: Conversion Rate
          Percent Change, expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
          \ / ${last_fact.average_conversion_rate}", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: click_through_rate_percent_change,
        label: Click Through Rate Percent Change, expression: "(${fact.average_click_rate}\
          \ - ${last_fact.average_click_rate}) / ${last_fact.average_click_rate}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/New_York
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_fields: [last_fact.total_cost, last_fact.total_conversions, fact.average_click_rate,
      last_fact.average_click_rate, last_fact.average_cost_per_conversion,
      last_fact.cost_per_click, fact.cost_per_click, last_fact.average_conversion_rate,
      fact.total_cost, cost_change, fact.total_conversions, total_conversion_change,
      cost_per_click_percent_change, click_through_rate_percent_change, cost_per_conversion_percent_change,
      fact.average_cost_per_conversion]
    row: 0
    col: 19
    width: 5
    height: 3
  - title: Conversion Trends
    name: Conversion Trends
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: looker_line
    fields: [fact.date_date, fact.average_cost_per_conversion, fact.average_conversion_rate,
      fact.total_conversions]
    fill_fields: [fact.date_date]
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [fact.date_date desc]
    limit: 500
    query_timezone: America/New_York
    color_application:
      collection_id: legacy
      palette_id: fuchsia_to_green
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: fact.average_cost_per_conversion,
            id: fact.average_cost_per_conversion, name: Cost per Conversion.}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: left,
        series: [{axisId: fact.average_conversion_rate, id: fact.average_conversion_rate,
            name: Conversion Rate}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: fact.total_conversions, id: fact.total_conversions,
            name: Conversions}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [fact.average_conversion_rate, fact.total_conversions]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      fact.cumulative_spend: "#4bb86a"
      last_fact.cumulative_spend: "#8fe4a7"
      fact.average_cost_per_conversion: "#7869df"
      fact.average_conversion_rate: "#6e98f9"
      fact.total_conversions: "#8ac8ca"
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    hidden_fields: [total_conversion_change]
    listen: {}
    row: 3
    col: 9
    width: 15
    height: 10
  - title: Spend To Date
    name: Spend To Date
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: looker_area
    fields: [fact.date_day_of_period, fact.cumulative_spend, last_fact.cumulative_spend]
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [fact.date_day_of_period]
    limit: 500
    query_timezone: America/New_York
    stacking: ''
    trellis: ''
    color_application:
      collection_id: legacy
      palette_id: fuchsia_to_green
      options:
        steps: 5
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      fact.cumulative_spend: "#4bb86a"
      last_fact.cumulative_spend: "#8fe4a7"
      fact.cumulative_spend: "#4bb86a"
      last_fact.cumulative_spend: "#8fe4a7"
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Last Period
    series_types: {}
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    hidden_fields: [total_conversion_change]
    listen: {}
    row: 3
    col: 0
    width: 9
    height: 10
  - title: Funnel
    name: Funnel
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: looker_column
    fields: [fact.date_period, fact.total_impressions, fact.total_clicks, fact.total_conversions]
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [fact.date_period desc]
    limit: 500
    query_timezone: America/New_York
    stacking: ''
    trellis: ''
    color_application:
      collection_id: legacy
      palette_id: mixed_pastels
      options:
        steps: 5
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors:
      fact.cumulative_spend: "#4bb86a"
      last_fact.cumulative_spend: "#8fe4a7"
      fact.total_impressions: "#d06180"
      fact.total_clicks: "#a4a6a9"
      fact.total_conversions: "#7869df"
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    series_types: {}
    limit_displayed_rows: false
    y_axes: [{label: '', orientation: left, series: [{id: fact.total_impressions,
            name: Ad Group This Period Impressions, axisId: fact.total_impressions},
          {id: fact.total_clicks, name: Ad Group This Period Clicks, axisId: fact.total_clicks},
          {id: fact.total_conversions, name: Ad Group This Period Conversions, axisId: fact.total_conversions}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: log}]
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_dropoff: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    hidden_fields: [total_conversion_change]
    listen: {}
    row: 13
    col: 0
    width: 9
    height: 6
  - title: Click Rate
    name: Click Rate
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: single_value
    fields: [fact.total_cost, last_fact.total_cost, fact.total_conversions,
      last_fact.total_conversions, fact.average_cost_per_conversion, last_fact.average_cost_per_conversion,
      fact.average_conversion_rate, last_fact.average_conversion_rate, fact.average_click_rate,
      last_fact.average_click_rate, fact.cost_per_click, last_fact.cost_per_click]
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [cost_per_conversion_percent_change]
    limit: 500
    dynamic_fields: [{table_calculation: cost_change, label: Cost Change, expression: "${fact.total_cost}\
          \ - ${last_fact.total_cost}", value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: total_conversion_change,
        label: Total Conversion Change, expression: "${fact.total_conversions} - ${last_fact.total_conversions}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_conversion_percent_change,
        label: Cost Per Conversion Percent Change, expression: "${fact.average_cost_per_conversion}\
          \ - ${last_fact.average_cost_per_conversion}", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}, {
        table_calculation: cost_per_click_percent_change, label: Cost Per Click Percent
          Change, expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
          \ / ${last_fact.average_cost_per_conversion}", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}, {
        table_calculation: conversion_rate_percent_change, label: Conversion Rate
          Percent Change, expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
          \ / ${last_fact.average_conversion_rate}", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: click_through_rate_percent_change,
        label: Click Through Rate Percent Change, expression: "(${fact.average_click_rate}\
          \ - ${last_fact.average_click_rate}) / ${last_fact.average_click_rate}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/New_York
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_fields: [last_fact.total_cost, fact.total_conversions, last_fact.total_conversions,
      last_fact.average_click_rate, fact.average_conversion_rate, fact.average_cost_per_conversion,
      last_fact.average_cost_per_conversion, last_fact.cost_per_click,
      fact.cost_per_click, last_fact.average_conversion_rate, total_conversion_change,
      fact.total_cost, cost_change, cost_per_conversion_percent_change, cost_per_click_percent_change,
      conversion_rate_percent_change]
    listen: {}
    row: 13
    col: 9
    width: 7
    height: 3
  - title: Per Click
    name: Per Click
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: single_value
    fields: [fact.total_cost, last_fact.total_cost, fact.total_conversions,
      last_fact.total_conversions, fact.average_cost_per_conversion, last_fact.average_cost_per_conversion,
      fact.average_conversion_rate, last_fact.average_conversion_rate, fact.average_click_rate,
      last_fact.average_click_rate, fact.cost_per_click, last_fact.cost_per_click]
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [cost_per_conversion_percent_change]
    limit: 500
    dynamic_fields: [{table_calculation: cost_change, label: Cost Change, expression: "${fact.total_cost}\
          \ - ${last_fact.total_cost}", value_format: !!null '', value_format_name: usd_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: total_conversion_change,
        label: Total Conversion Change, expression: "${fact.total_conversions} - ${last_fact.total_conversions}",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: cost_per_conversion_percent_change,
        label: Cost Per Conversion Percent Change, expression: "${fact.average_cost_per_conversion}\
          \ - ${last_fact.average_cost_per_conversion}", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}, {
        table_calculation: cost_per_click_percent_change, label: Cost Per Click Percent
          Change, expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
          \ / ${last_fact.average_cost_per_conversion}", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}, {
        table_calculation: conversion_rate_percent_change, label: Conversion Rate
          Percent Change, expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
          \ / ${last_fact.average_conversion_rate}", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: click_through_rate_percent_change,
        label: Click Through Rate Percent Change, expression: "(${fact.average_click_rate}\
          \ - ${last_fact.average_click_rate}) / ${last_fact.average_click_rate}",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/New_York
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    hidden_fields: [last_fact.total_cost, fact.total_conversions, last_fact.total_conversions,
      last_fact.average_click_rate, fact.average_conversion_rate, fact.average_cost_per_conversion,
      last_fact.average_cost_per_conversion, last_fact.average_conversion_rate,
      total_conversion_change, fact.total_cost, cost_change, cost_per_conversion_percent_change,
      conversion_rate_percent_change, last_fact.cost_per_click, click_through_rate_percent_change,
      fact.average_click_rate]
    listen: {}
    row: 16
    col: 9
    width: 7
    height: 3
  - title: Click Trend
    name: Click Trend
    model: marketing_analytics
    explore: pinterest_ad_group_date_fact
    type: looker_line
    fields: [fact.date_date, fact.cost_per_click, fact.average_click_rate,
      fact.total_clicks]
    fill_fields: [fact.date_date]
    filters:
      fact.period: 28 day
      fact.date_period_latest: 'Yes'
    sorts: [fact.date_date desc]
    limit: 500
    query_timezone: America/New_York
    color_application:
      collection_id: legacy
      palette_id: fuchsia_to_green
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: fact.cost_per_click,
            id: fact.cost_per_click, name: Cost per Click}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: !!null '', orientation: left, series: [{axisId: fact.average_click_rate,
            id: fact.average_click_rate, name: Click Through Rate}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: !!null '', orientation: right, series: [{axisId: fact.total_clicks,
            id: fact.total_clicks, name: Clicks}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hidden_series: [fact.average_conversion_rate, fact.total_conversions, fact.total_clicks,
      fact.average_click_rate]
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      fact.cumulative_spend: "#4bb86a"
      last_fact.cumulative_spend: "#8fe4a7"
      fact.average_cost_per_conversion: "#7869df"
      fact.average_conversion_rate: "#6e98f9"
      fact.total_conversions: "#8ac8ca"
      fact.cost_per_click: "#d06180"
      fact.average_click_rate: "#a4a6a9"
      fact.total_clicks: "#7869df"
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    hidden_fields: [total_conversion_change]
    listen: {}
    row: 13
    col: 16
    width: 8
    height: 6
