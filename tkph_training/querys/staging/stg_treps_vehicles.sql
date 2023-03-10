SELECT
    treps_vehicle_dtu003."Time"
    , treps_vehicle_dtu003."Vehicle"
    , treps_vehicle_dtu003."Vehicle Type"
    , treps_vehicle_dtu003."Position"
    , 'BRIDGESTONE' AS "Tire Brand"
    , treps_vehicle_dtu003."TireSN" AS "Tire SN"
    , treps_vehicle_dtu003."Tire Type"
    , treps_vehicle_dtu003."TagSN" AS "Tag SN"
    , treps_vehicle_dtu003."Pressure (psi)"
    , treps_vehicle_dtu003."Temperature (°C)" AS "Temp (C)"
    , treps_vehicle_dtu003."Prec (psi)" AS "Recommended Pressure (psi)"
    , treps_vehicle_dtu003."Alarm Status"
    , treps_vehicle_dtu003."Red Temp (°C)" AS "Red Temp (C)"
    , treps_vehicle_dtu003."Amber Temp (°C)" AS "Amber Temp (C)"
    , treps_vehicle_dtu003."Red Low Press (psi)" AS "Red Low Pressure (psi)"
    , treps_vehicle_dtu003."Amber Low Press (psi)" AS "Amber Low Pressure (psi)"
    , treps_vehicle_dtu003."Red High Press (psi)" AS "Red High Pressure (psi)"
    , treps_vehicle_dtu003."Amber High Press (psi)" AS "Amber High Pressure (psi)"
FROM treps_vehicle_dtu003
UNION ALL
SELECT
    treps_vehicle_dtu004."Time"
    , treps_vehicle_dtu004."Vehicle"
    , treps_vehicle_dtu004."Vehicle Type"
    , treps_vehicle_dtu004."Position"
    , treps_vehicle_dtu004."Tire Brand"
    , treps_vehicle_dtu004."TireSN" AS "Tire SN"
    , treps_vehicle_dtu004."Tire Type"
    , treps_vehicle_dtu004."TagSN" AS "Tag SN"
    , treps_vehicle_dtu004."Pressure (psi)"
    , treps_vehicle_dtu004."Temperature (°C)" AS "Temp (°C)"
    , treps_vehicle_dtu004."Prec (psi)" AS "Recommended Pressure (psi)"
    , treps_vehicle_dtu004."Alarm Status"
    , treps_vehicle_dtu004."Red Temp (°C)" AS "Red Temp (°C)"
    , treps_vehicle_dtu004."Amber Temp (°C)" AS "Amber Temp (°C)"
    , treps_vehicle_dtu004."Red Low Press (psi)" AS "Red Low Pressure (psi)"
    , treps_vehicle_dtu004."Amber Low Press (psi)" AS "Amber Low Pressure (psi)"
    , treps_vehicle_dtu004."Red High Press (psi)" AS "Red High Pressure (psi)"
    , treps_vehicle_dtu004."Amber High Press (psi)" AS "Amber High Pressure (psi)"
FROM treps_vehicle_dtu004