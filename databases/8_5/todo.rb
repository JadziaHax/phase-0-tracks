require 'sqlite3'

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

done = false
until done == true
  puts "\n1. Add item\n2. View List\n3. Set item as complete\n4. Set item as incomplete\n5. Delete Item\n6. Exit\n Please select a number from the menu"

  option = nil

  until option == 1 || option == 2 || option == 3 || option == 4 || option == 5 || option == 6
    option = gets.chomp.to_i
  end

  case option
  when 6
    done = true
  when 1
    puts "Please enter a task"
    user_task = gets.chomp
    puts "Please enter a deadline date in the following format: DD-MM-YYYY"
    user_deadline = gets.chomp
    add_item(db, user_task, user_deadline)
  when 2
    puts "\n"
    tasks = db.execute("SELECT * FROM todo")
    tasks.each do |task|
      puts "Task Number #{task[0]} is #{task[1]} is due by #{task[2]}. Complete: #{task[3]}."
    end
  when 3
    puts "\n"
    tasks = db.execute("SELECT * FROM todo")
    tasks.each do |task|
      puts "Task Number #{task[0]} is #{task[1]} is due by #{task[2]}. Complete: #{task[3]}."
    end
    puts "\nPlease specify the Number of the task to be marked complete."
    choice = gets.chomp.to_i
    mark_complete(db, choice)
  when 4
    puts "\n"
    tasks = db.execute("SELECT * FROM todo")
    tasks.each do |task|
      puts "Task Number #{task[0]} is #{task[1]} is due by #{task[2]}. Complete: #{task[3]}."
    end
    puts "\nPlease specify the Number of the task to be marked incomplete."
    choice = gets.chomp.to_i
    undo_mark_complete(db, choice)
  end
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

#delete_item test driver code
p return_item(db, 1)
delete_item(db, 1)
p return_item(db, 1)
=end