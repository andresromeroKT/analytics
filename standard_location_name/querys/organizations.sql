SELECT
    row_number() over ( partition by mtg_site_attributes."SiteID" order by r5_organizations."ORG_CODE" ) AS row_num
    ,mtg_site_attributes."SiteID"
    , r5_organizations."ORG_CODE"
    , r5_organizations."ORG_DESC"
FROM r5_organizations
    INNER JOIN common_id
        ON common_id."OBJ_ORG" = r5_organizations."ORG_CODE"
    INNER JOIN mtg_site_attributes
        ON mtg_site_attributes."CODE" = common_id."OBJ_MRC"
WHERE mtg_site_attributes."SiteID" IS NOT NULL