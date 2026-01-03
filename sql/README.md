## SQL Pipeline

This folder contains the BigQuery SQL pipeline used to construct
station-level net bike flow data from raw TfL cycling hire records.

Execution order:
1. 01_create_raw_trips.sql
2. 02_build_trips_2022_2025.sql
3. 03_build_trips_clean.sql
4. 04_build_events.sql
5. 05_build_net_flow_30min.sql

Each script represents a single transformation step and can be
run sequentially to reproduce the modelling dataset.
