CREATE TABLE IF NOT EXISTS kategori_kegiatan (
  id INT PRIMARY KEY,
  name VARCHAR(64),
  create_by VARCHAR(32),
  create_date TIMESTAMP
);

INSERT INTO
  kategori_kegiatan (id, name, create_by, create_date)
VALUES
  (0,'WO/WS',NULL,NULL),
  (1,'FACILITIES MAINTENANCE',NULL,NULL);
