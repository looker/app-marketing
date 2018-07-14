- dashboard: fb_campaign_metrics_conversions
  title: FB Campaign Metrics - Conversions
  extends: fb_campaign_metrics_base
  layout: newspaper
  elements:
  - title: Conversions By Gender
    name: Conversions By Gender
    model: marketing_analytics
    explore: fb_ad_impressions_age_and_gender
    type: looker_bar
    fields:
    - fact.gender
    - fact.total_conversions
    filters:
     fact.total_conversions: ">0"
    sorts:
    - fact.total_conversions desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    colors:
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#7869df"
    - "#d06180"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
    listen:
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 17
    col: 0
    width: 9
    height: 5
  - title: Conversions By Age
    name: Conversions By Age
    model: marketing_analytics
    explore: fb_ad_impressions_age_and_gender
    type: looker_bar
    fields:
    - fact.age
    - fact.total_conversions
    sorts:
    - fact.total_conversions desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    colors:
    - "#7869df"
    - "#d06180"
    - "#4bb86a"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
    listen:
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 11
    col: 0
    width: 9
    height: 6
  - title: Conversions By Day Of Week
    name: Conversions By Day Of Week
    model: marketing_analytics
    explore: fb_ad_impressions
    type: looker_bar
    fields:
    - fact.date_day_of_week
    - fact.total_conversions
    fill_fields:
    - fact.date_day_of_week
    sorts:
    - fact.date_day_of_week
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    colors:
    - "#8ac8ca"
    - "#7869df"
    - "#6e98f9"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
    listen:
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 28
    col: 0
    width: 9
    height: 6
  - title: Conversions By Device
    name: Conversions By Device
    model: marketing_analytics
    explore: fb_ad_impressions_platform_and_device
    type: looker_bar
    fields:
    - fact.device_type
    - fact.total_conversions
    filters:
     fact.total_conversions: ">0"
    sorts:
    - fact.total_conversions desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    colors:
    - "#d06180"
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
    listen:
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 23
    col: 9
    width: 7
    height: 5
  - title: Conversions By Platform
    name: Conversions By Platform
    model: marketing_analytics
    explore: fb_ad_impressions_platform_and_device
    type: looker_bar
    fields:
    - fact.publisher_platform
    - fact.total_conversions
    filters:
     fact.total_conversions: ">0"
    sorts:
    - fact.total_conversions desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    colors:
    - "#dc9d4f"
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
    listen:
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 23
    col: 16
    width: 8
    height: 5
  - title: Conversions To Date
    name: Conversions To Date
    model: marketing_analytics
    explore: fb_period_fact
    type: looker_column
    fields:
    - fact.date_date
    - fact.total_conversions
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - fact.average_cost_per_click
    - fact.average_click_rate
    fill_fields:
    - fact.date_date
    sorts:
    - fact.date_date desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: time
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    hidden_fields: []
    series_types:
      fact.average_cost_per_click: line
      fact.average_click_rate: line
      fact.average_conversion_rate: line
      fact.average_cost_per_conversion: line
      fact.total_conversions: line
    colors:
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    hidden_series:
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - fact.average_cost_per_click
    - fact.average_click_rate
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_cost_per_click
        name: Cost per Click
        axisId: fact.average_cost_per_click
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_cost_per_conversion
        name: Cost per Conversion
        axisId: fact.average_cost_per_conversion
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Conversion Rate
        axisId: fact.average_conversion_rate
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_click_rate
        name: Click Through Rate
        axisId: fact.average_click_rate
    listen:
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 0
    width: 24
    height: 11
  - title: Conversions By Country
    name: Conversions By Country
    model: marketing_analytics
    explore: fb_ad_impressions_geo
    type: looker_geo_choropleth
    fields:
    - fact.country
    - fact.total_conversions
    sorts:
    - fact.total_conversions desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    map: auto
    map_projection: ''
    show_view_names: false
    quantize_colors: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    colors:
    - "#e7e7e7"
    - "#7ED09C"
    - "#7DD389"
    - "#85D67C"
    - "#9AD97B"
    - "#B1DB7A"
    - "#CADF79"
    - "#E2DF78"
    - "#E7AF75"
    series_colors: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.total_cost
        name: Cost
        axisId: fact.total_cost
    listen:
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 11
    col: 9
    width: 15
    height: 12
  - title: Top Ads By Conversions
    name: Top Ads By Conversions
    model: marketing_analytics
    explore: fb_ad_impressions
    type: looker_bar
    fields:
    - fact.ad_name
    - fact.adset_name
    - fact.campaign_name
    - fact.total_conversions
    sorts:
    - fact.total_conversions desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    colors:
    - "#a6b7ff"
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
    listen:
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 28
    col: 9
    width: 15
    height: 6
  - title: Conversions By Demographics
    name: Conversions By Demographics
    model: marketing_analytics
    explore: fb_ad_impressions_age_and_gender
    type: table
    fields:
    - fact.age
    - fact.gender
    - fact.total_conversions
    pivots:
    - fact.gender
    sorts:
    - fact.gender
    - fact.age 0
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    colors:
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    - "#7869df"
    - "#d06180"
    - "#4bb86a"
    - "#6e98f9"
    - "#8ac8ca"
    - "#dc9d4f"
    - "#a4a6"
    series_colors: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.total_cost
        name: Cost
        axisId: fact.total_cost
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
    listen:
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 22
    col: 0
    width: 9
    height: 6