######  ###  #  NUTRITIONAL DATA  #  ###  ######
#NOTE:
### If I were to refactor, it'd probably be best to have all items on one table, and specify a category of produce, animal, or fat, rather than being split out.


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
        serving_size INT,
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
        serving_size INT,
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
        serving_size INT,
        calories INT,
        protein INT,
        carbs INT,
        fat INT
    )
SQL


#Create tables
db.execute(create_produce_table_cmd)
db.execute(create_animals_table_cmd)
db.execute(create_fats_table_cmd)


#Retrieve table data
produce = db.execute("SELECT * FROM produce")
animals = db.execute("SELECT * FROM animals")
fats = db.execute("SELECT * FROM fats")


#Add food items

#produce
def add_produce (db, name, serving_size, calories, protein, carbs, fat)
    db.execute("INSERT INTO produce (name, serving_size, calories, protein, carbs, fat) VALUES (?, ?, ?, ?, ?, ?)", [name, serving_size, calories, protein, carbs, fat])
end

#animals
def add_animal (db, name, serving_size, calories, protein, carbs, fat)
    db.execute("INSERT INTO animals (name, serving_size, calories, protein, carbs, fat) VALUES (?, ?, ?, ?, ?, ?)", [name, serving_size, calories, protein, carbs, fat])
end

#fats
def add_fat (db, name, serving_size, calories, protein, carbs, fat)
    db.execute("INSERT INTO fats (name, serving_size, calories, protein, carbs, fat) VALUES (?, ?, ?, ?, ?, ?)", [name, serving_size, calories, protein, carbs, fat])
end



##### ##  DRIVER CODE  ## #####

add_produce (db, "kale", 100, 49, 4, 9, 1)
add_animal (db, "salmon", 100, 208, 20, 0, 13)
add_fat (db, "almonds", 100, 576, 21, 22, 49)

p produce
p animals
p fats
