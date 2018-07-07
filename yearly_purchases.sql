/* Count of purchases aggregated by year, month, and week */
SELECT STRFTIME('%Y', CO.purchase_date) Date_Year, STRFTIME('%M', CO.purchase_date) Date_Month, CV.brand, strftime('%W', CO.purchase_date) Date_WeekNum, Count(CO.vin)
FROM Customer_Ownership CO LEFT OUTER JOIN Car_Vins CV ON (CV.vin = CO.vin)
GROUP BY STRFTIME('%Y', CO.purchase_date),STRFTIME('%M', CO.purchase_date), CV.brand;
