require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("todo.db")

db.execute(<<-SQL
  CREATE TABLE IF NOT EXISTS todo(
    id INTEGER PRIMARY KEY,
    task VARCHAR(255),
    deadline VARCHAR(10),
    complete boolean
  )
SQL
)

def add_item(db, task, deadline)
  db.execute('INSERT INTO todo (task, deadline, complete) VALUES (?, ?, "false")', [task, deadline])
end