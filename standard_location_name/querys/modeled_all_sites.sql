SELECT
    all_sites."Site ID"
    , all_sites."LMS Site ID"
    , all_sites."TOMS Site ID"
    , all_sites."Site Status"
    , all_sites."Site Type"
    , all_sites."Site Name" AS all_sites_name
    , int_all_sites_attributes_match."MTG Name" AS mtg_site_name
    , lms_location_names."Site Name" AS lms_site_name
    , COALESCE(
            int_all_sites_attributes_match."MTG Name", 
            lms_location_names."Site Name"
    ) AS corrected_site_name
FROM all_sites
    LEFT JOIN lms_location_names
        ON lms_location_names."LMS Site ID" = all_sites."LMS Site ID"
    LEFT JOIN int_all_sites_attributes_match
        ON int_all_sites_attributes_match."Site ID" = all_sites."Site ID"
