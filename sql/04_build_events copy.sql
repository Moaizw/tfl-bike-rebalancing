CREATE OR REPLACE TABLE cyclinghire.events AS
SELECT
  start_station_id AS station_id,
  TIMESTAMP_SECONDS(
    DIV(UNIX_SECONDS(start_time), 1800) * 1800
  ) AS time_bucket,
  -1 AS flow
FROM cyclinghire.trips_clean

UNION ALL

SELECT
  end_station_id AS station_id,
  TIMESTAMP_SECONDS(
    DIV(UNIX_SECONDS(end_time), 1800) * 1800
  ) AS time_bucket,
  +1 AS flow
FROM cyclinghire.trips_clean;

