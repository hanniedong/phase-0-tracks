require 'SQLite3'
require 'faker'

db = SQLite3::Database.new("todolist.db")
db.results_as_hash = true

create_task_list= <<-SQL
  CREATE TABLE IF NOT EXISTS tasks(
    id INTEGER PRIMARY KEY,
    task VARCHAR(255),
    description VARCHAR(255),
    completed VARCHAR (255)
  );
SQL

db.execute(create_task_list)

def display_list(db)
	list = db.execute("SELECT * FROM tasks")
	list.each do |row|
		puts "Task: #{row['task']} | Description: #{row['description']} | Completed: #{row['completed']}"
	end
end

def update_task(db)
	puts "What task would you like to mark as complete?"
	input_update = gets.chomp
	db.execute("UPDATE tasks SET completed='yes' WHERE task='#{input_update}'")
end

def add_task(db)
	puts "Add the task."
	input_task = gets.chomp
	puts "Provide a description for the task."
	input_description = gets.chomp
	db.execute("INSERT INTO tasks(task, description, completed) VALUES ('#{input_task}', '#{input_description}', 'no')")
end 

def delete_task(db)
	puts "What task would you like to delete?"
	input_delete = gets.chomp
	db.execute("DELETE FROM TASKS WHERE task='#{input_delete}'")
end

#Driver code
puts "Welcome to the Task Tracker!"
puts "Type ADD if you would like to add a task"
puts "Type SEE if you would like to see updated list."
puts "Type UPDATE if you would like to mark task as complete."
puts "Type DELETE if you would like to delete task."
puts "Type EXIT when finished"
loop do	
puts "Would you like to ADD, UPDATE, DELETE, SEE list, or EXIT?"
answer_task = gets.chomp
	if answer_task == "ADD"
		updated_task = add_task(db)
		display_list(db)
	elsif answer_task == "UPDATE"
		completed_task = update_task(db)
		display_list(db)
	elsif answer_task == "DELETE"
		delete_task (db)
		display_list(db)
	elsif answer_task == "SEE"
		display_list(db)
		break
	elsif answer_task == "EXIT" 
		display_list(db)
		break
	else
		puts "Please provide valid input"
	end
end
