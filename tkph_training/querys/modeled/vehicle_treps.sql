SELECT
    vehicle_cicles."uuid" AS cicle_uuid
    , vehicle_treps."Time"
    , vehicle_treps."Position"
    , vehicle_treps."Tire Brand"
    , vehicle_treps."Tire SN"
    , vehicle_treps."Tire Type"
    , vehicle_treps."Tag SN"
    , vehicle_treps."Pressure (psi)"
    , vehicle_treps."Temp (C)"
    , vehicle_treps."Recommended Pressure (psi)"
    , vehicle_treps."Alarm Status"
    , vehicle_treps."Red Temp (C)"
    , vehicle_treps."Amber Temp (C)"
    , vehicle_treps."Red Low Pressure (psi)"
    , vehicle_treps."Amber Low Pressure (psi)"
    , vehicle_treps."Red High Pressure (psi)"
    , vehicle_treps."Amber High Pressure (psi)"
FROM vehicle_cicles
    INNER JOIN vehicle_treps
        ON vehicle_treps."Time" <= vehicle_cicles."End Time"
        AND vehicle_treps."Time" >= vehicle_cicles."Start Time"
        AND vehicle_treps."Vehicle" = vehicle_cicles."Vehicle"