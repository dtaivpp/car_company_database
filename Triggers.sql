CREATE TRIGGER Option_Set_Model_Relation
BEFORE INSERT ON Car_Vins
BEGIN
SELECT CASE
  WHEN(
    SELECT CO.model_id
    FROM Car_Options as CO
    WHERE 
      NEW.option_set_id = CO.option_set_id and
      NEW.model_id = CO.model_id) 
  THEN RAISE(FAIL, "Invlalid Option Set")
  END;
END;

CREATE TRIGGER validate_email_before_insert_customer 
BEFORE INSERT ON Customers
BEGIN
  SELECT CASE
  WHEN NEW.email NOT LIKE '%_@__%.__%' THEN
  RAISE (ABORT,'Invalid email address')
  END;
END;