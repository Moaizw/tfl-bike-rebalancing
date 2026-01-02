CREATE OR REPLACE EXTERNAL TABLE cyclinghire.raw_trips (
  Number STRING,
  Start_date STRING,
  Start_station_number STRING,
  Start_station STRING,
  End_date STRING,
  End_station_number STRING,
  End_station STRING,
  Bike_number STRING,
  Bike_model STRING,
  Total_duration STRING,
  Total_duration__ms_ STRING
)
OPTIONS (
  format = 'CSV',
  uris = [
    'gs://cyclinghire-raw/2022/*.csv',
    'gs://cyclinghire-raw/2023/*.csv',
    'gs://cyclinghire-raw/2024/*.csv',
    'gs://cyclinghire-raw/2025/*.csv'
  ],
  skip_leading_rows = 1,
  allow_jagged_rows = TRUE,
  allow_quoted_newlines = TRUE
);

