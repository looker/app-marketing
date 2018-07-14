- dashboard: fb_campaign_metrics_base
  extension: required
  title: FB Campaign Metrics Base
  layout: newspaper
  embed_style:
    background_color: "#ffffff"
    title_color: "#3a4245"
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  filters:
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: fb_ad_impressions
    listens_to_filters: []
    field: campaign.name
  - name: Adset
    title: Adset
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: fb_ad_impressions
    listens_to_filters: []
    field: adset.name
  - name: Period
    title: Period
    type: field_filter
    default_value: 28 day
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: fb_ad_impressions
    listens_to_filters: []
    field: fact.period
  - name: Period Latest
    title: Period Latest
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    model: marketing_analytics
    explore: fb_ad_impressions
    listens_to_filters: []
    field: fact.date_period_latest
