SELECT STRFTIME('%Y', purchase_date), Count(vin)
FROM Customer_Ownership
GROUP BY STRFTIME('%Y', purchase_date)