require_relative 'todolist.rb'

# Creates a new todo list
list = TodoList.new("Diane's List", "Diane")

# Add four new items
list.add_item("item_1", "true", "04Feb2016")
list.add_item("item_2", "false", "04Aug2016")
list.add_item("item_3", "false", "04Jun2016")
list.add_item("item_4", "true", "04Jul2016")

# Print the list
list.print_list

# Delete the first item
list.remove_item(1)

# Print the list
list.print_list

# Delete the second item
list.remove_item(2)

# Print the list
list.print_list

# Update the completion status of the first item to complete
list.completed?(1)

# Print the list
list.print_list

# Update the title of the list
list.rename("My New List")

# Print the list
list.print_list