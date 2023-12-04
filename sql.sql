# duh
SELECT * FROM table_name; -- Retrieve all records from a table
SELECT column1, column2 FROM table_name; -- Retrieve specific columns from a table
SELECT column1, column2 FROM table_name WHERE condition; -- Retrieve specific columns based on a condition

# inserts, deletes, creates, alters and updates
INSERT INTO table_name (column1, column2) VALUES (value1, value2); -- Insert a new record into a table
UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition; -- Update records in a table
DELETE FROM table_name WHERE condition; -- Delete records from a table
CREATE TABLE table_name (column1 datatype, column2 datatype); -- Create a new table
ALTER TABLE table_name ADD column_name datatype; -- Add a new column to a table
ALTER TABLE table_name MODIFY column_name datatype; -- Modify the datatype of a column in a table
ALTER TABLE table_name DROP column_name; -- Remove a column from a table

# more common queries
SELECT DISTINCT column_name FROM table_name; -- Retrieve unique values from a column
SELECT column_name FROM table_name ORDER BY column_name ASC; -- Retrieve records sorted in ascending order
SELECT column_name FROM table_name ORDER BY column_name DESC; -- Retrieve records sorted in descending order
SELECT column_name FROM table_name LIMIT n; -- Retrieve n records from a table
SELECT COUNT(*) FROM table_name; -- Count the number of records in a table

# joins
SELECT column_name(s) FROM table_name1 JOIN table_name2 ON table_name1.column_name = table_name2.column_name; -- Join two tables
SELECT column_name(s) FROM table_name1 LEFT JOIN table_name2 ON table_name1.column_name = table_name2.column_name; -- Left join two tables
SELECT column_name(s) FROM table_name1 RIGHT JOIN table_name2 ON table_name1.column_name = table_name2.column_name; -- Right join two tables
SELECT column_name(s) FROM table_name1 FULL JOIN table_name2 ON table_name1.column_name = table_name2.column_name; -- Full join two tables

# aggregate functions
SELECT COUNT(column_name) FROM table_name; -- Count the number of non-NULL values in a table
SELECT AVG(column_name) FROM table_name; -- Get the average of a column in a table
SELECT SUM(column_name) FROM table_name; -- Get the sum of a column in a table
SELECT MIN(column_name) FROM table_name; -- Get the minimum value of a column in a table
SELECT MAX(column_name) FROM table_name; -- Get the maximum value of a column in a table
SELECT ROUND(column_name, n) FROM table_name; -- Round values in a column to n decimal places

# grouping
SELECT column_name1, COUNT(column_name2) FROM table_name GROUP BY column_name1; -- Group records in a table using GROUP BY
SELECT column_name1, COUNT(column_name2) FROM table_name GROUP BY column_name1 HAVING COUNT(column_name2) > value; -- Group records using GROUP BY and a condition with HAVING
SELECT column_name1, column_name2 FROM table_name GROUP BY column_name1, column_name2; -- Group records using more than one column

# subqueries
SELECT column_name1 FROM table_name1 WHERE column_name2 IN (SELECT column_name2 FROM table_name2); -- Retrieve records where a column value is in a list
SELECT column_name1 FROM table_name1 WHERE column_name2 IN (value1, value2); -- Retrieve records where a column value is in a list of values
SELECT column_name1 FROM table_name1 WHERE column_name1 operator (SELECT column_name2 FROM table_name2); -- Retrieve records where a column value is in a list returned by a subquery
SELECT column_name1 FROM table_name1 WHERE column_name1 operator value (SELECT column_name2 FROM table_name2); -- Retrieve records where a column value is in a list of values returned by a subquery
SELECT column_name1 FROM table_name1 WHERE EXISTS (SELECT column_name2 FROM table_name2 WHERE condition); -- Retrieve records where a subquery returns any rows
SELECT column_name1 FROM table_name1 WHERE column_name operator ALL (SELECT column_name2 FROM table_name2 WHERE condition); -- Retrieve records where all values in a subquery match
SELECT column_name1 FROM table_name1 WHERE column_name operator ANY (SELECT column_name2 FROM table_name2 WHERE condition); -- Retrieve records where any values in a subquery match
SELECT column_name1 FROM table_name1 WHERE column_name operator SOME (SELECT column_name2 FROM table_name2 WHERE condition); -- Retrieve records where any values in a subquery match

# unions
SELECT column_name1 FROM table_name1 UNION SELECT column_name1 FROM table_name2; -- Combine the result set of two or more SELECT statements (only distinct values)
SELECT column_name1 FROM table_name1 UNION ALL SELECT column_name1 FROM table_name2; -- Combine the result set of two or more SELECT statements (allows duplicate values)

# views
CREATE VIEW view_name AS SELECT column_name1, column_name2 FROM table_name WHERE condition; -- Create a new view
SELECT * FROM view_name; -- Retrieve records from a view
DROP VIEW view_name; -- Delete a view

# transactions
START TRANSACTION; -- Start a transaction
COMMIT; -- Commit a transaction
ROLLBACK; -- Rollback a transaction

# user management
CREATE USER 'username'@'localhost' IDENTIFIED BY 'password'; -- Create a new user

#geospatial queries with PostGIS and PostgreSQL
SELECT ST_AsText(geom) FROM table_name; -- Retrieve the geometry as a text (WKT) representation
SELECT ST_AsGeoJSON(geom) FROM table_name; -- Retrieve the geometry as a GeoJSON representation
SELECT ST_AsKML(geom) FROM table_name; -- Retrieve the geometry as a KML representation
SELECT ST_AsGML(geom) FROM table_name; -- Retrieve the geometry as a GML representation
SELECT ST_AsSVG(geom) FROM table_name; -- Retrieve the geometry as an SVG representation
SELECT ST_AsEWKT(geom) FROM table_name; -- Retrieve the geometry as an EWKT representation
SELECT ST_AsTWKB(geom) FROM table_name; -- Retrieve the geometry as a TWKB representation
SELECT ST_AsBinary(geom) FROM table_name; -- Retrieve the geometry as a binary representation
SELECT ST_AsEncodedPolyline(geom) FROM table_name; -- Retrieve the geometry as an encoded polyline representation
SELECT ST_AsGeoHash(geom) FROM table_name; -- Retrieve the geometry as a GeoHash representation
SELECT ST_AsRaster(geom) FROM table_name; -- Retrieve the geometry as a raster representation
SELECT ST_AsMVT(geom) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation
SELECT ST_AsMVTGeom(geom) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation
SELECT ST_AsMVTGeom(geom, BBox, TileSize, Buffer) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation
SELECT ST_AsMVTGeom(geom, BBox, TileSize, Buffer, Clip) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation
SELECT ST_AsMVTGeom(geom, BBox, TileSize, Buffer, Clip, Simplify) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation
SELECT ST_AsMVTGeom(geom, BBox, TileSize, Buffer, Clip, Simplify, Stroke) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation
SELECT ST_AsMVTGeom(geom, BBox, TileSize, Buffer, Clip, Simplify, Stroke, StrokeWidth) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation
SELECT ST_AsMVTGeom(geom, BBox, TileSize, Buffer, Clip, Simplify, Stroke, StrokeWidth, StrokeLineJoin) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation
SELECT ST_AsMVTGeom(geom, BBox, TileSize, Buffer, Clip, Simplify, Stroke, StrokeWidth, StrokeLineJoin, StrokeLineCap) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation
SELECT ST_AsMVTGeom(geom, BBox, TileSize, Buffer, Clip, Simplify, Stroke, StrokeWidth, StrokeLineJoin, StrokeLineCap, Fill) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation
SELECT ST_AsMVTGeom(geom, BBox, TileSize, Buffer, Clip, Simplify, Stroke, StrokeWidth, StrokeLineJoin, StrokeLineCap, Fill, Optimize) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation
SELECT ST_AsMVTGeom(geom, BBox, TileSize, Buffer, Clip, Simplify, Stroke, StrokeWidth, StrokeLineJoin, StrokeLineCap, Fill, Optimize, ExtraAttributes) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation
SELECT ST_AsMVTGeom(geom, BBox, TileSize, Buffer, Clip, Simplify, Stroke, StrokeWidth, StrokeLineJoin, StrokeLineCap, Fill, Optimize, ExtraAttributes, FeatureId) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation
SELECT ST_AsMVTGeom(geom, BBox, TileSize) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation
SELECT ST_AsMVTGeom(geom, BBox, TileSize, Buffer) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation
SELECT ST_AsMVTGeom(geom, BBox, TileSize, Buffer, Clip) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation
SELECT ST_AsMVTGeom(geom, BBox, TileSize, Buffer, Clip, Simplify) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation
SELECT ST_AsMVTGeom(geom, BBox, TileSize, Buffer, Clip, Simplify, Stroke) FROM table_name; -- Retrieve the geometry as a Mapbox Vector Tile representation

# geospatial queries with MySQL
SELECT * FROM points_table WHERE ST_DWithin(geom, ST_MakePoint(lon, lat)::geography, radius); -- Find all points within a certain radius of a given point:
SELECT ST_Distance(geom1::geography, geom2::geography) FROM points_table; -- Find the distance between two points:
SELECT ST_Distance_Sphere(geom1::geography, geom2::geography) FROM points_table; -- Find the distance between two points using a spherical calculation:
SELECT ST_Distance_Spheroid(geom1::geography, geom2::geography, spheroid) FROM points_table; -- Find the distance between two points using a spheroidal calculation:
SELECT ST_DWithin(geom1::geography, geom2::geography, radius) FROM points_table; -- Find all points within a certain radius of a given point:
SELECT ST_Area(geom::geography) FROM polygons_table; -- Find the area of a polygon:
SELECT ST_Length(geom::geography) FROM lines_table; -- Find the length of a line:
SELECT ST_Centroid(geom) FROM polygons_table; -- Find the centroid of a polygon:
SELECT ST_Centroid(geom) FROM lines_table; -- Find the centroid of a line:
SELECT ST_Centroid(geom) FROM points_table; -- Find the centroid of a point:
SELECT * FROM points_table WHERE geom && ST_MakeEnvelope(left, bottom, right, top, 4326); -- Find all points within a bounding box:
SELECT ST_Transform(geom, new_srid) FROM geometries_table; -- Transform a geometry from one SRID to another:


# BIGQUERY statements
--count columns
SELECT count(distinct column_name) 
FROM  `jacob`.xxx_historic.INFORMATION_SCHEMA.COLUMNS
WHERE table_name = "adset_daily_device"


-- select date and count of value
SELECT distinct(date) d, count(clicks) c FROM `jacob.xxx_historic.patch_test`
group by d
order by d


-- insert one table into another
INSERT INTO `jacob.xxx_historic.adset_daily_device` (
SELECT * FROM `jacob.xxx_historic.patch_test`)



-- delete rows where
DELETE FROM `project.dataset.table` WHERE price = 0;


-- drop columns
ALTER TABLE TABLE_NAME DROP COLUMN_NAME



-- change datatype of column
ALTER TABLE `jacob-analytics.xxx.init`
ALTER COLUMN active_view_pct_viewable_impresions SET DATA TYPE FLOAT64




-- rename column
ALTER TABLE `{dataset_id}.{table_prefix}`
RENAME COLUMN active_view_viewable_impressions TO active_view_pct_viewable_impresions


-- Create Table - Basic
CREATE TABLE IF NOT EXISTS `xxx-jacob.no.datetime_files`
(file_name STRING, player_number INT64, regular_name STRING)


-- Insert Values into Table - Basic
INSERT INTO `xxx.xxx.profiles` (profile_id, brand, countryCode, currencyCode, name)
VALUES ("3234234266889261",'CM','US','USD', 'company')


-- Create Partitioned Table
CREATE OR REPLACE TABLE `your_project_id.your_dataset_id.your_partitioned_table_id`
PARTITION BY DATE(Order_Time)
AS
SELECT * FROM `your_project_id.your_dataset_id.your_source_table_id`




-- nested left joins and WITH !!!
-- GRIOT GARAGE JOIN

CREATE OR REPLACE TABLE `xxx.xxx.table_1` AS
-- Remove duplicate images of different sizes
With FirstImage AS (
  SELECT date, campaign_name, adset_name, ad_name,
    ARRAY_AGG(image_asset_url ORDER BY date, campaign_name, adset_name, ad_name LIMIT 1)[OFFSET(0)] AS image_asset_url
  FROM `xxx.xxx.table_2`
  GROUP BY date, campaign_name, adset_name, ad_name
),
-- Remove duplicate videos of different sizes
FirstVideo AS (
  SELECT date, campaign_name, adset_name, ad_name,
    ARRAY_AGG(video_asset_thumbnail_url ORDER BY date, campaign_name, adset_name, ad_name LIMIT 1)[OFFSET(0)] AS video_asset_thumbnail_url
  FROM `xxx.xxx.table_3`
  GROUP BY date, campaign_name, adset_name, ad_name
)


-- Join all tables
SELECT t5.*,t6.video_asset_thumbnail_url FROM(
    SELECT t3.*, t4.image_asset_url FROM (
        SELECT t1.*,t2.ad_preview_url_desktop_feed FROM `xxx.xxx.table_1` t1
        LEFT JOIN (
            SELECT distinct * FROM (SELECT ad_id,ad_preview_url_desktop_feed FROM `xxx.xxx.table_2`)) t2
        ON t1.ad_id = t2.ad_id
    ) t3
    LEFT JOIN FirstImage t4
    ON t3.campaign_name = t4.campaign_name AND
    t3.adset_name = t4.adset_name AND
    t3.ad_name = t4.ad_name AND
    t3.date = t4.date
    ) t5
LEFT JOIN FirstVideo t6
ON t5.campaign_name = t6.campaign_name AND
t5.adset_name = t6.adset_name AND
t5.ad_name = t6.ad_name AND
t5.date = t6.date




