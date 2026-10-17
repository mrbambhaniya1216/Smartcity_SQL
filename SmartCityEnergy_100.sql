-- SmartCityEnergy_100.sql : 100-row sample (20 meters x 5 dates). Run this, then run PART 1 of SmartCity_SQL.sql.
-- NOTE: this replaces any existing SmartCityEnergy table (including the full dataset).
CREATE DATABASE IF NOT EXISTS wattwatch;
USE wattwatch;
DROP TABLE IF EXISTS SmartCityEnergy;
CREATE TABLE SmartCityEnergy (
    MeterID            VARCHAR(10)   NOT NULL,
    Zone               VARCHAR(20)   NOT NULL,
    ConsumerType       VARCHAR(20)   NOT NULL,
    Date               DATE          NOT NULL,
    EnergyConsumed_kWh DECIMAL(10,2) NOT NULL,
    PeakUsage_kWh      DECIMAL(10,2) NOT NULL,
    OutageMinutes      INT           NOT NULL,
    MeterStatus        VARCHAR(10)   NOT NULL,
    TariffRate         DECIMAL(8,4)  NOT NULL
);
INSERT INTO SmartCityEnergy (MeterID,Zone,ConsumerType,Date,EnergyConsumed_kWh,PeakUsage_kWh,OutageMinutes,MeterStatus,TariffRate) VALUES
('MTR-0093','Central','Commercial','2024-01-15',59.21,4.6,0,'Active',0.1872),
('MTR-0096','Central','Residential','2024-01-15',17.87,1.83,0,'Active',0.1456),
('MTR-0108','Central','Industrial','2024-01-15',779.57,47.75,0,'Active',0.1144),
('MTR-0113','Central','Commercial','2024-01-15',86.42,5.91,0,'Faulty',0.1872),
('MTR-0049','East','Commercial','2024-01-15',114.71,9.87,0,'Active',0.1872),
('MTR-0050','East','Residential','2024-01-15',14.41,1.84,0,'Active',0.1456),
('MTR-0053','East','Commercial','2024-01-15',101.87,7.05,26,'Faulty',0.1872),
('MTR-0055','East','Industrial','2024-01-15',577.26,36.17,0,'Active',0.1144),
('MTR-0001','North','Commercial','2024-01-15',81.52,5.8,0,'Active',0.1872),
('MTR-0002','North','Residential','2024-01-15',15.34,1.54,0,'Active',0.1456),
('MTR-0006','North','Industrial','2024-01-15',668.7,37.32,0,'Active',0.1144),
('MTR-0024','North','Commercial','2024-01-15',126.66,9.73,0,'Faulty',0.1872),
('MTR-0025','South','Commercial','2024-01-15',62.88,4.62,0,'Active',0.1872),
('MTR-0026','South','Residential','2024-01-15',10.51,1.34,0,'Active',0.1456),
('MTR-0027','South','Residential','2024-01-15',13.08,1.47,0,'Active',0.1456),
('MTR-0028','South','Residential','2024-01-15',9.59,1.13,0,'Faulty',0.1456),
('MTR-0071','West','Commercial','2024-01-15',230.82,17.92,0,'Active',0.1872),
('MTR-0072','West','Residential','2024-01-15',11.06,1.29,0,'Active',0.1456),
('MTR-0079','West','Industrial','2024-01-15',280.64,17.07,0,'Faulty',0.1144),
('MTR-0084','West','Industrial','2024-01-15',414.44,21.85,0,'Active',0.1144),
('MTR-0093','Central','Commercial','2024-03-09',49.19,3.46,0,'Active',0.1872),
('MTR-0096','Central','Residential','2024-03-09',24.0,2.5,0,'Active',0.1456),
('MTR-0108','Central','Industrial','2024-03-09',714.74,45.52,0,'Active',0.1144),
('MTR-0113','Central','Commercial','2024-03-09',66.42,4.97,0,'Active',0.1872),
('MTR-0049','East','Commercial','2024-03-09',81.03,6.3,0,'Active',0.1872),
('MTR-0050','East','Residential','2024-03-09',15.0,1.85,0,'Active',0.1456),
('MTR-0053','East','Commercial','2024-03-09',98.45,6.91,0,'Faulty',0.1872),
('MTR-0055','East','Industrial','2024-03-09',497.83,28.68,0,'Active',0.1144),
('MTR-0001','North','Commercial','2024-03-09',80.42,5.7,0,'Active',0.1872),
('MTR-0002','North','Residential','2024-03-09',24.43,2.31,0,'Active',0.1456),
('MTR-0006','North','Industrial','2024-03-09',575.67,33.27,0,'Active',0.1144),
('MTR-0024','North','Commercial','2024-03-09',85.87,6.28,0,'Faulty',0.1872),
('MTR-0025','South','Commercial','2024-03-09',53.14,3.86,0,'Active',0.1872),
('MTR-0026','South','Residential','2024-03-09',11.29,1.34,0,'Faulty',0.1456),
('MTR-0027','South','Residential','2024-03-09',22.89,2.65,0,'Active',0.1456),
('MTR-0028','South','Residential','2024-03-09',15.49,2.06,23,'Faulty',0.1456),
('MTR-0071','West','Commercial','2024-03-09',157.53,11.77,0,'Active',0.1872),
('MTR-0072','West','Residential','2024-03-09',15.67,1.91,0,'Active',0.1456),
('MTR-0079','West','Industrial','2024-03-09',356.79,21.73,0,'Faulty',0.1144),
('MTR-0084','West','Industrial','2024-03-09',508.47,27.18,0,'Active',0.1144),
('MTR-0093','Central','Commercial','2024-06-18',94.29,6.88,0,'Active',0.2022),
('MTR-0096','Central','Residential','2024-06-18',27.14,2.76,0,'Active',0.1572),
('MTR-0108','Central','Industrial','2024-06-18',1278.45,74.42,0,'Active',0.1236),
('MTR-0113','Central','Commercial','2024-06-18',147.14,10.51,0,'Active',0.2022),
('MTR-0049','East','Commercial','2024-06-18',140.39,11.67,0,'Faulty',0.2022),
('MTR-0050','East','Residential','2024-06-18',19.77,2.45,0,'Active',0.1572),
('MTR-0053','East','Commercial','2024-06-18',203.36,14.16,0,'Faulty',0.2022),
('MTR-0055','East','Industrial','2024-06-18',843.4,53.71,0,'Active',0.1236),
('MTR-0001','North','Commercial','2024-06-18',161.41,10.72,0,'Active',0.2022),
('MTR-0002','North','Residential','2024-06-18',24.01,2.37,0,'Active',0.1572),
('MTR-0006','North','Industrial','2024-06-18',1087.45,58.98,0,'Active',0.1236),
('MTR-0024','North','Commercial','2024-06-18',213.65,15.86,0,'Faulty',0.2022),
('MTR-0025','South','Commercial','2024-06-18',107.8,7.46,0,'Active',0.2022),
('MTR-0026','South','Residential','2024-06-18',14.45,1.82,0,'Active',0.1572),
('MTR-0027','South','Residential','2024-06-18',27.62,3.21,0,'Active',0.1572),
('MTR-0028','South','Residential','2024-06-18',12.71,1.54,0,'Faulty',0.1572),
('MTR-0071','West','Commercial','2024-06-18',361.66,29.3,0,'Active',0.2022),
('MTR-0072','West','Residential','2024-06-18',15.36,1.81,0,'Faulty',0.1572),
('MTR-0079','West','Industrial','2024-06-18',467.44,28.29,0,'Faulty',0.1236),
('MTR-0084','West','Industrial','2024-06-18',880.47,45.67,0,'Active',0.1236),
('MTR-0093','Central','Commercial','2024-09-22',54.47,3.81,0,'Active',0.1872),
('MTR-0096','Central','Residential','2024-09-22',27.98,2.84,0,'Active',0.1456),
('MTR-0108','Central','Industrial','2024-09-22',704.8,43.85,0,'Active',0.1144),
('MTR-0113','Central','Commercial','2024-09-22',80.42,5.71,0,'Active',0.1872),
('MTR-0049','East','Commercial','2024-09-22',79.8,6.7,0,'Active',0.1872),
('MTR-0050','East','Residential','2024-09-22',19.25,2.52,0,'Active',0.1456),
('MTR-0053','East','Commercial','2024-09-22',126.22,8.42,0,'Faulty',0.1872),
('MTR-0055','East','Industrial','2024-09-22',600.75,34.29,0,'Active',0.1144),
('MTR-0001','North','Commercial','2024-09-22',74.36,5.29,0,'Active',0.1872),
('MTR-0002','North','Residential','2024-09-22',22.09,2.21,0,'Active',0.1456),
('MTR-0006','North','Industrial','2024-09-22',748.73,40.57,0,'Faulty',0.1144),
('MTR-0024','North','Commercial','2024-09-22',83.58,6.3,0,'Faulty',0.1872),
('MTR-0025','South','Commercial','2024-09-22',47.45,3.12,0,'Active',0.1872),
('MTR-0026','South','Residential','2024-09-22',11.33,1.38,0,'Active',0.1456),
('MTR-0027','South','Residential','2024-09-22',19.37,2.39,0,'Active',0.1456),
('MTR-0028','South','Residential','2024-09-22',13.92,1.73,0,'Faulty',0.1456),
('MTR-0071','West','Commercial','2024-09-22',175.26,14.33,0,'Active',0.1872),
('MTR-0072','West','Residential','2024-09-22',15.44,1.93,0,'Active',0.1456),
('MTR-0079','West','Industrial','2024-09-22',439.23,27.78,0,'Faulty',0.1144),
('MTR-0084','West','Industrial','2024-09-22',426.49,22.85,0,'Active',0.1144),
('MTR-0093','Central','Commercial','2024-12-11',62.66,4.52,0,'Active',0.1872),
('MTR-0096','Central','Residential','2024-12-11',18.77,1.85,0,'Active',0.1456),
('MTR-0108','Central','Industrial','2024-12-11',619.74,39.31,0,'Active',0.1144),
('MTR-0113','Central','Commercial','2024-12-11',83.77,6.4,0,'Active',0.1872),
('MTR-0049','East','Commercial','2024-12-11',108.39,8.91,0,'Active',0.1872),
('MTR-0050','East','Residential','2024-12-11',13.02,1.64,0,'Active',0.1456),
('MTR-0053','East','Commercial','2024-12-11',131.8,8.97,0,'Faulty',0.1872),
('MTR-0055','East','Industrial','2024-12-11',474.17,29.83,0,'Active',0.1144),
('MTR-0001','North','Commercial','2024-12-11',96.47,6.89,0,'Active',0.1872),
('MTR-0002','North','Residential','2024-12-11',14.82,1.32,0,'Active',0.1456),
('MTR-0006','North','Industrial','2024-12-11',537.47,29.55,0,'Active',0.1144),
('MTR-0024','North','Commercial','2024-12-11',118.46,8.63,0,'Faulty',0.1872),
('MTR-0025','South','Commercial','2024-12-11',56.79,3.82,0,'Active',0.1872),
('MTR-0026','South','Residential','2024-12-11',9.63,1.25,0,'Active',0.1456),
('MTR-0027','South','Residential','2024-12-11',15.52,1.73,0,'Active',0.1456),
('MTR-0028','South','Residential','2024-12-11',9.98,1.32,0,'Faulty',0.1456),
('MTR-0071','West','Commercial','2024-12-11',177.59,14.64,0,'Active',0.1872),
('MTR-0072','West','Residential','2024-12-11',10.11,1.28,0,'Active',0.1456),
('MTR-0079','West','Industrial','2024-12-11',296.38,17.55,0,'Faulty',0.1144),
('MTR-0084','West','Industrial','2024-12-11',381.15,20.65,0,'Active',0.1144);

SELECT COUNT(*) AS total_rows FROM SmartCityEnergy;

SELECT COUNT(*) AS total_rows, COUNT(DISTINCT MeterID) AS meters,
       MIN(Date) AS first_date, MAX(Date) AS last_date
FROM SmartCityEnergy;

SELECT  d.Zone,
        ROUND(SUM(d.zone_daily_kWh), 2)              AS total_kWh,
        ROUND(AVG(d.zone_daily_kWh), 2)              AS avg_daily_zone_kWh,
        ROUND(SUM(d.zone_daily_kWh) / SUM(d.meter_readings), 2) AS avg_kWh_per_meter_day
FROM (
        SELECT Zone, Date,
               SUM(EnergyConsumed_kWh) AS zone_daily_kWh,
               COUNT(*)                AS meter_readings
        FROM   SmartCityEnergy
        GROUP  BY Zone, Date
     ) AS d
GROUP BY d.Zone
ORDER BY total_kWh DESC;

SELECT ConsumerType, rank_in_type, MeterID, Zone, total_kWh
FROM (
        SELECT  ConsumerType, MeterID, Zone,
                ROUND(SUM(EnergyConsumed_kWh), 2) AS total_kWh,
                ROW_NUMBER() OVER (PARTITION BY ConsumerType
                                   ORDER BY SUM(EnergyConsumed_kWh) DESC) AS rank_in_type
        FROM    SmartCityEnergy
        GROUP   BY ConsumerType, MeterID, Zone
     ) AS ranked
WHERE rank_in_type <= 5
ORDER BY ConsumerType, rank_in_type;


SELECT  DATE_FORMAT(Date, '%Y-%m')           AS year_month_key,
        Zone,
        ROUND(SUM(EnergyConsumed_kWh), 2)    AS total_kWh,
        ROUND(AVG(EnergyConsumed_kWh), 2)    AS avg_kWh_per_reading
FROM    SmartCityEnergy
GROUP   BY DATE_FORMAT(Date, '%Y-%m'), Zone
ORDER   BY year_month_key, Zone;


SELECT  Zone,
        COUNT(DISTINCT MeterID)                                         AS meters,
        ROUND(SUM(EnergyConsumed_kWh * TariffRate), 2)                  AS total_cost,
        ROUND(AVG(EnergyConsumed_kWh * TariffRate), 2)                  AS avg_cost_per_reading,
        ROUND(SUM(EnergyConsumed_kWh * TariffRate)
              / COUNT(DISTINCT MeterID), 2)                             AS avg_cost_per_meter
FROM    SmartCityEnergy
GROUP   BY Zone
ORDER   BY avg_cost_per_reading DESC;


SELECT  MeterID, Zone, ConsumerType,
        SUM(MeterStatus = 'Faulty')                                     AS faulty_days,
        SUM(OutageMinutes > 0)                                          AS outage_days,
        SUM(OutageMinutes)                                              AS total_outage_min,
        SUM(MeterStatus = 'Faulty' OR OutageMinutes > 0)                AS fault_or_outage_days
FROM    SmartCityEnergy
GROUP   BY MeterID, Zone, ConsumerType
ORDER   BY fault_or_outage_days DESC, total_outage_min DESC
LIMIT   15;


SELECT  z.Zone,
        ROUND(z.avg_kWh, 2)                                   AS avg_kWh_per_meter_day,
        ROUND(z.avg_outage_min, 2)                            AS avg_outage_min_per_meter_day,
        ROUND(100 * z.outage_days / z.readings, 2)            AS pct_days_with_outage,
        ROUND(z.avg_kWh / c.avg_kWh, 3)                       AS usage_index,
        ROUND(z.avg_outage_min / c.avg_outage_min, 3)         AS outage_index,
        ROUND(((z.avg_kWh / c.avg_kWh) + (z.avg_outage_min / c.avg_outage_min)) / 2, 3)
                                                              AS inefficiency_score,
        RANK() OVER (ORDER BY ((z.avg_kWh / c.avg_kWh) + (z.avg_outage_min / c.avg_outage_min)) DESC)
                                                              AS inefficiency_rank
FROM (
        SELECT Zone,
               AVG(EnergyConsumed_kWh) AS avg_kWh,
               AVG(OutageMinutes)      AS avg_outage_min,
               SUM(OutageMinutes > 0)  AS outage_days,
               COUNT(*)                AS readings
        FROM   SmartCityEnergy
        GROUP  BY Zone
     ) AS z
CROSS JOIN (
        SELECT AVG(EnergyConsumed_kWh) AS avg_kWh,
               AVG(OutageMinutes)      AS avg_outage_min
        FROM   SmartCityEnergy
     ) AS c
ORDER BY inefficiency_score DESC;


SELECT  CASE WHEN DAYOFWEEK(Date) IN (1, 7) THEN 'Weekend' ELSE 'Weekday' END AS day_type,
        ConsumerType,
        ROUND(AVG(PeakUsage_kWh), 2)         AS avg_peak_kWh,
        ROUND(MAX(PeakUsage_kWh), 2)         AS max_peak_kWh,
        ROUND(AVG(EnergyConsumed_kWh), 2)    AS avg_daily_kWh
FROM    SmartCityEnergy
GROUP   BY day_type, ConsumerType
ORDER   BY ConsumerType, day_type;

-- 7b. Average peak by day of week (all consumers)
SELECT  DAYOFWEEK(Date)                      AS dow_number,
        DAYNAME(Date)                        AS day_name,
        ROUND(AVG(PeakUsage_kWh), 2)         AS avg_peak_kWh,
        ROUND(AVG(EnergyConsumed_kWh), 2)    AS avg_daily_kWh
FROM    SmartCityEnergy
GROUP   BY DAYOFWEEK(Date), DAYNAME(Date)
ORDER   BY dow_number;


SELECT  ROUND(SUM(EnergyConsumed_kWh), 2)                 AS total_consumption_kWh,
        ROUND(AVG(PeakUsage_kWh), 2)                      AS avg_peak_usage_kWh,
        SUM(OutageMinutes)                                AS total_outage_minutes,
        ROUND(SUM(EnergyConsumed_kWh * TariffRate), 2)    AS total_estimated_cost
FROM    SmartCityEnergy;


SELECT  ConsumerType,
        ROUND(SUM(EnergyConsumed_kWh), 2)  AS total_kWh,
        ROUND(100 * SUM(EnergyConsumed_kWh) /
              (SELECT SUM(EnergyConsumed_kWh) FROM SmartCityEnergy), 2) AS pct_of_total
FROM    SmartCityEnergy
GROUP   BY ConsumerType
ORDER   BY total_kWh DESC;

SELECT  DATE_FORMAT(Date, '%Y-%m')                        AS year_month_key,
        Zone, ConsumerType,
        COUNT(*)                                          AS readings,
        ROUND(SUM(EnergyConsumed_kWh), 2)                 AS total_kWh,
        ROUND(SUM(PeakUsage_kWh), 2)                      AS peak_kWh_sum,
        SUM(OutageMinutes)                                AS outage_minutes,
        ROUND(SUM(EnergyConsumed_kWh * TariffRate), 2)    AS est_cost,
        SUM(MeterStatus = 'Faulty')                       AS faulty_readings
FROM    SmartCityEnergy
GROUP   BY DATE_FORMAT(Date, '%Y-%m'), Zone, ConsumerType
ORDER   BY year_month_key, Zone, ConsumerType;

