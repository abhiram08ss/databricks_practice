-- Bronze: load raw bike-share CSV files from a managed volume directory.



CREATE OR REFRESH MATERIALIZED VIEW medallion_catalog.bronze.bronze_pipeline_orders_mv

COMMENT "Raw orders loaded from CSV files uploaded to the Landing volume."

AS

SELECT *
FROM read_files(
    "/Volumes/medallion_catalog/landing/landing_volume/bike-share-rides.csv",
    format => "csv",
    header => true
);


