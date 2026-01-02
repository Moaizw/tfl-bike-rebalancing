CREATE OR REPLACE TABLE cyclinghire.trips_clean AS
SELECT
  *,
  TIMESTAMP_DIFF(end_time, start_time, SECOND) / 60.0
    AS duration_minutes
FROM cyclinghire.trips_2022_2025
WHERE
  start_time IS NOT NULL
  AND end_time IS NOT NULL
  AND end_time >= start_time
  AND end_time <= start_time + INTERVAL 2 HOUR;
