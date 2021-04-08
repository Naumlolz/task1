require 'active_record'
require './database_creator'

db = Database.new
db.drop_table('marketing_materials')
db.drop_table('offices')
db.drop_table('fixtures')
db.drop_table('rooms')
db.drop_table('zones')