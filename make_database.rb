require 'active_record'
require './database_creator'

db = Database.new
db.create_table(<<-SQL
  CREATE TABLE IF NOT EXISTS marketing_materials (
    id  SERIAL PRIMARY KEY,
    name  VARCHAR NOT NULL,
    type  VARCHAR NOT NULL,
    cost  INTEGER NOT NULL,
    fixture_id INTEGER NOT NULL
  );
SQL
)
db.create_table(<<-SQL
  CREATE TABLE IF NOT EXISTS offices (
    id  SERIAL PRIMARY KEY,
    name  VARCHAR NOT NULL,
    address  VARCHAR NOT NULL,
    city  VARCHAR NOT NULL,
    state VARCHAR NOT NULL,
    phone VARCHAR NOT NULL,
    lob VARCHAR NOT NULL,
    type VARCHAR NOT NULL
  );
SQL
)
db.create_table(<<-SQL
  CREATE TABLE IF NOT EXISTS zones(
    id SERIAL PRIMARY KEY,
    type VARCHAR NOT NULL
  );
SQL
)
db.create_table(<<-SQL
  CREATE TABLE IF NOT EXISTS rooms(
    id SERIAL PRIMARY KEY,
    area INTEGER NOT NULL,
    max_people INTEGER NOT NULL,
    type VARCHAR NOT NULL,
    zone_id INTEGER NOT NULL,
    office_id INTEGER NOT NULL
  );
SQL
)
db.create_table(<<-SQL
  CREATE TABLE IF NOT EXISTS fixtures(
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    type VARCHAR NOT NULL,
    room_id INTEGER NOT NULL
  );
SQL
)
