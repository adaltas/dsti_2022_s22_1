SET hivevar:hiveUsername=l_firstname_dsti;

CREATE TABLE IF NOT EXISTS dsti_2022_s22_1.${hiveUsername}_nyc_drivers (
  driver_id INT,
  first_name STRING,
  last_name STRING,
  ssn INT,
  address STRING,
  certified BOOLEAN,
  wage_plan STRING
)
STORED AS ORC;
