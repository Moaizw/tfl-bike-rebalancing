CREATE OR REPLACE TABLE cyclinghire.net_flow_30min AS
SELECT
  station_id,
  time_bucket,
  SUM(flow) AS net_flow
FROM cyclinghire.events
GROUP BY station_id, time_bucket;

