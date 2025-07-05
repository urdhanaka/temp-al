CREATE TABLE IF NOT EXISTS jenis_wk (
  id INT PRIMARY KEY,
  name VARCHAR(64),
  create_by VARCHAR(32),
  create_date TIMESTAMP
);

INSERT INTO
  jenis_wk (id, name, create_by, create_date)
VALUES
  (366,'EKS',NULL,NULL),
  (367,'EPT',NULL,NULL);
