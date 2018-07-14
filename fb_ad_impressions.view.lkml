include: "/ama_fb_adapter/ad_impressions.view"

include: "date_base.view"
include: "period_base.view"
include: "fb_ad_metrics_base.view"

explore: fb_ad_impressions {
  persist_with: facebook_ads_etl_datagroup
  extends: [ad_impressions_fb_adapter]
  from: fb_ad_impressions
  view_name: fact
  group_label: "Facebook Ads (Marketing Analytics)"
  label: "Facebook Ad Impressions"
  view_label: "Impressions"
}

view: fb_ad_impressions {
  extends: [date_base, period_base, fb_ad_metrics_base, ad_impressions_fb_adapter]
}

explore: fb_ad_impressions_age_and_gender {
  persist_with: facebook_ads_etl_datagroup
  extends: [ad_impressions_age_and_gender_fb_adapter]
  from: fb_ad_impressions_age_and_gender
  view_name: fact
  group_label: "Facebook Ads (Marketing Analytics)"
  label: "Facebook Ad Impressions by Age & Gender"
  view_label: "Impressions by Age & Gender"
}

view: fb_ad_impressions_age_and_gender {
  extends: [date_base, period_base, fb_ad_metrics_base, ad_impressions_age_and_gender_fb_adapter]
}

explore: fb_ad_impressions_geo {
  persist_with: facebook_ads_etl_datagroup
  extends: [ad_impressions_geo_fb_adapter]
  from: fb_ad_impressions_geo
  view_name: fact
  group_label: "Facebook Ads (Marketing Analytics)"
  label: "Facebook Ad Impressions by Country"
  view_label: "Impressions by Country"
}

view: fb_ad_impressions_geo {
  extends: [date_base, period_base, fb_ad_metrics_base, ad_impressions_geo_fb_adapter]
}

explore: fb_ad_impressions_platform_and_device {
  persist_with: facebook_ads_etl_datagroup
  extends: [ad_impressions_platform_and_device_fb_adapter]
  from: fb_ad_impressions_platform_and_device
  view_name: fact
  group_label: "Facebook Ads (Marketing Analytics)"
  label: "Facebook Ad Impressions by Platform & Device"
  view_label: "Impressions by Platform & Device"
}

view: fb_ad_impressions_platform_and_device {
  extends: [date_base, period_base, fb_ad_metrics_base, ad_impressions_platform_and_device_fb_adapter]
}
