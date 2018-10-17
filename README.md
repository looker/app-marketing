# Marketing Analytics by Looker

LookML files for setting up the digital marketing application. This is the core project that combines the analysis of multiple data sources and packages it into an application. This project includes the model file, text files and application.json file that structures the application.

### Using as an Application

To use this application, you first need to add the projects and their adapters for all the available data sources. For example, Google Ads adapter is in a project named `app-marketing-google-ads-adapter` and a Facebook adapter in a project named `app-marketing-facebook-ads-adapter` as specified in the manifest.lkml.

Note: This requires the Project Import feature currently in /admin/labs to be enabled on your Looker instance.


Details on installing the application can be found here: [How To: Enable Application on Customer Instance](https://docs.google.com/document/d/15g5Xhr1YziFKeYvZkGYIDj94WyilJ08aT9RA-JLc9YQ).

List of all projects that can be included with app-marketing:

LookML files for different data sources:
- app-marekting-google-ads
- app-marketing-facebook-ads
- app-marketing-linkedin-ads
- app-marketing-bing-ads

Google Ads Adapters:
- app-marketing-google-ads-fivetran-bigquery
- app-marketing-google-ads-transfer-bigquery
- app-marketing-google-ads-stitch-redshift

Facebook Ads Adapters:
- app-marketing-facebook-ads-stitch-redshift
- app-marketing-facebook-ads-fivetran-bigquery

LinkedIn Ads Adapter:
- app-marketing-linkedin-ads-fivetran-bigquery

Bing Ads Adapter:
- app-marketing-bing-ads-fivetran-bigquery

In Progress:
- app-marketing-google-ads-bigquery
- app-marketing-google-ads-redshift
- app-marketing-google-ads-fivetran-redshift
- app-marketing-google-ads-stitch-bigquery
- app-marketing-google-ads-stitch-snowflake
- app-marketing-google-ads-fivetran-snowflake
- app-marketing-facebook-ads-redshift
- app-marketing-facebook-ads-fivetran-snowflake
- app-marketing-facebook-ads-fivetran-redshift
- app-marketing-facebook-ads-stitch-bigquery
- app-marketing-facebook-ads-stitch-snowflake
