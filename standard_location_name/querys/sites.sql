SELECT
    all_sites."Site ID"
    , all_sites."LMS Site ID"
    , all_sites."TOMS Site ID"
    , all_sites."Site Status"
    , all_sites."Site Type"
    , r5_organizations_filled."ORG_DESC" AS toms_org_site_name
    , r5_mrcs."MRC_DESC" AS toms_mrc_site_name
    , lms_location_names."Site Name" AS lms_site_name
    , all_sites."Site Name" AS all_sites_name
    , UPPER(
        COALESCE(
            r5_organizations_filled."ORG_DESC", r5_mrcs."MRC_DESC", 
            lms_location_names."Site Name", all_sites."Site Name"
    )) AS site_name
FROM all_sites
    LEFT JOIN lms_location_names
        ON lms_location_names."LMS Site ID" = all_sites."LMS Site ID"
    LEFT JOIN r5_mrcs
        ON r5_mrcs."MRC_CODE" = all_sites."TOMS Site ID"
    LEFT JOIN r5_organizations_filled
        ON r5_organizations_filled."SiteID" = all_sites."Site ID"
