require 'SQLite3'

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
	puts "---------------------------------------------------------------"
	list.each do |row|
		puts "Task: #{row['task']} | Description: #{row['description']} | Completed: #{row['completed']}"
	end
	puts "---------------------------------------------------------------"
end

def update_task(update, db)
	db.execute("UPDATE tasks SET completed='yes' WHERE task='#{update}'")
end

def add_task(task, description, db)
	db.execute("INSERT INTO tasks(task, description, completed) VALUES ('#{task}', '#{description}', 'no')")
end 

def delete_task(delete, db)
	db.execute("DELETE FROM TASKS WHERE task='#{delete}'")
end

def view_task (view, db)
	single_task = db.execute("SELECT * FROM tasks WHERE task='#{view}'")
	puts "---------------------------------------------------------------"
	single_task.each do |row|
		puts "Task: #{row['task']} | Description: #{row['description']} | Completed: #{row['completed']}"
	puts "---------------------------------------------------------------"
	end
end

#Driver code
puts "Welcome to the Task Tracker!"
puts "Here is your current list:"
puts display_list(db)
puts "---------------------------------------------------------------"
puts "Type ADD if you would like to add a task"
puts "Type SEE if you would like to see updated list."
puts "Type UPDATE if you would like to mark task as complete."
puts "Type VIEW if you would like to view single task."
puts "Type DELETE if you would like to delete task."
puts "Type EXIT when finished"
puts "---------------------------------------------------------------"
loop do	
puts "Would you like to ADD task, UPDATE task as completed, DELETE task, VIEW single task, SEE list, or EXIT?"
answer_task = gets.chomp
	if answer_task == "ADD"
		puts "Add the task."
		input_task = gets.chomp.gets.chomp.upcase!
		puts "Provide a description for the task."
		input_description = gets.chomp
		add_task(input_task, input_description, db)
	elsif answer_task == "UPDATE"
		puts "What task would you like to mark as complete?"
		input_update = gets.chomp
		update_task(input_update, db)
	elsif answer_task == "VIEW"
		puts "What task would you like to view?"
		input_view = gets.chomp
		view_task(input_view, db)
	elsif answer_task == "DELETE"
		puts "What task would you like to delete?"
		input_delete = gets.chomp
		delete_task(input_delete, db)
	elsif answer_task == "SEE"
		display_list(db)
	elsif answer_task == "EXIT" 
		break
	else
		puts "Please provide valid input"
	end
end

puts "Here is your updated to do list!"
display_list(db)
