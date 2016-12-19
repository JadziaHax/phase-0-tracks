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

def return_item(db, id)
  db.execute('SELECT * FROM todo WHERE id=?', [id])
end

def mark_complete(db, id)
  db.execute('UPDATE todo SET complete="true" WHERE id=?', [id])
end

def undo_mark_complete(db, id)
  db.execute('UPDATE todo SET complete="false" WHERE id=?', [id])
end

def delete_item(db,id)
  db.execute('DELETE FROM todo WHERE id=?', [id])
end

=begin
#add_item test driver code
puts "Please enter a task"
user_task = gets.chomp
puts "Please enter a deadline date in the following format: DD-MM-YYYY"
user_deadline = gets.chomp
add_item(db, user_task, user_deadline)
tasks = db.execute("SELECT * FROM todo")
tasks.each do |task|
  puts "#{task[1]} is due by #{task[2]}"
end

#return_item test driver code
p return_item(db, 1)
p return_item(db, 2)

#mark_complete test driver code
mark_complete(db, 1)
p return_item(db, 1)

#undo_mark_complete test driver code
p return_item(db, 1)
undo_mark_complete(db, 1)
p return_item(db, 1)
=end

p return_item(db, 1)
delete_item(db, 1)
p return_item(db, 1)