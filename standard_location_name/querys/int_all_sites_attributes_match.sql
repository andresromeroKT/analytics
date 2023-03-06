SELECT
    all_sites."Site ID"
    , all_sites."Site Name"
    , mtg_site_attributes."Name" AS "MTG Name"
FROM all_sites
    INNER JOIN mtg_site_attributes
        ON all_sites."Site ID" = mtg_site_attributes."SiteID"
ORDER BY all_sites."Site ID"