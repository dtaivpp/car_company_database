/* Update the part to be recalled */
UPDATE Car_Parts
SET part_recall = 0
WHERE part_name = 'Jetrag 6 Speed' and manufacture_start_date < date("2012-04-13") and manufacture_end_date > date("2012-04-13");

SELECT CO.customer_id, CO.vin
FROM Customer_Ownership as CO
  LEFT OUTER JOIN Car_Vins as CV ON (CV.vin = CO.vin)
  LEFT OUTER JOIN Car_Options as COpt ON (COpt.option_set_id = CV.option_set_id)
  LEFT OUTER JOIN Car_Parts as CP on (CP.part_id = COpt.transmission_id)
WHERE CP.part_recall = 1 and part_name='Jetrag 7 Speed';
