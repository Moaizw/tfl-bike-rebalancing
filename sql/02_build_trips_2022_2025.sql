CREATE OR REPLACE TABLE cyclinghire.trips_2022_2025 AS
SELECT
  Number AS rental_id,
  Bike_number AS bike_id,

  COALESCE(
    SAFE.PARSE_TIMESTAMP('%d/%m/%Y %H:%M', Start_date),
    SAFE.PARSE_TIMESTAMP('%Y-%m-%d %H:%M:%S', Start_date),
    SAFE.PARSE_TIMESTAMP('%Y-%m-%d %H:%M', Start_date)
  ) AS start_time,

  COALESCE(
    SAFE.PARSE_TIMESTAMP('%d/%m/%Y %H:%M', End_date),
    SAFE.PARSE_TIMESTAMP('%Y-%m-%d %H:%M:%S', End_date),
    SAFE.PARSE_TIMESTAMP('%Y-%m-%d %H:%M', End_date)
  ) AS end_time,

  Start_station_number AS start_station_id,
  Start_station        AS start_station_name,

  End_station_number   AS end_station_id,
  End_station          AS end_station_name

FROM cyclinghire.raw_trips
WHERE
  COALESCE(
    SAFE.PARSE_TIMESTAMP('%d/%m/%Y %H:%M', Start_date),
    SAFE.PARSE_TIMESTAMP('%Y-%m-%d %H:%M:%S', Start_date),
    SAFE.PARSE_TIMESTAMP('%Y-%m-%d %H:%M', Start_date)
  )
  BETWEEN TIMESTAMP('2022-01-01') AND TIMESTAMP('2025-12-31');
