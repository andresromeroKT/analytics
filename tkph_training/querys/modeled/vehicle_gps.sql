SELECT
    vehicle_cicles."uuid" AS cicle_uuid
    , vehicle_gps."Time"
    , vehicle_gps."Latitude"
    , vehicle_gps."Longitude"
    , vehicle_gps."Altitude (m)"
    , vehicle_gps."Speed (km/h)"
FROM vehicle_cicles
    INNER JOIN vehicle_gps
        ON vehicle_gps."Time" <= vehicle_cicles."End Time"
        AND vehicle_gps."Time" >= vehicle_cicles."Start Time"
        AND vehicle_gps."Vehicle" = vehicle_cicles."Vehicle"