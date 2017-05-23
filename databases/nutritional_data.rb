######  ###  #  NUTRITIONAL DATA  #  ###  ######

##### ##  SQL SETUP  ## #####

#Require gems
require 'sqlite3'

#Create SQLite database
db = SQLite3::Database.new( "nutritional_data.db" )

#Create produce table (e.g. greens; potatoes)
create_produce_table_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS produce (
        id INTEGER PRIMARY KEY,
        name VARCHAR(255),
        calories INT,
        protein INT,
        carbs INT,
        fat INT
    )
SQL

#Create animals table (e.g. meat; fish)
create_animals_table_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS animals (
        id INTEGER PRIMARY KEY,
        name VARCHAR(255),
        calories INT,
        protein INT,
        carbs INT,
        fat INT
    )
SQL

#create fats table (e.g. nuts; oils)
create_fats_table_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS fats (
        id INTEGER PRIMARY KEY,
        name VARCHAR(255),
        calories INT,
        protein INT,
        carbs INT,
        fat INT
    )
SQL


##### ##  DRIVER CODE  ## #####


#Create tables
db.execute(create_produce_table_cmd)
db.execute(create_animals_table_cmd)
db.execute(create_fats_table_cmd)



#Retrieve table data
vegetables = db.execute("SELECT * FROM vegetables")
animals = db.execute("SELECT * FROM animals")
fats = db.execute("SELECT * FROM fats")