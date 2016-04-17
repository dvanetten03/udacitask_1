class TodoList
  attr_accessor :title, :items, :user

  # Initialize to-do list with a title and no items
  def initialize(list_title, user)
    @title = list_title
    @user = user
    @items = Array.new
  end

  # Method to rename list
  def rename(list_title)
    @title = list_title
  end

  # Method to add items to list
  def add_item(new_item, priority=0)
    item = Item.new(new_item, priority)
    @items << item
  end

  # Method to delete items from list
  def remove_item(index)
    @items.delete_at(index)
  end

  def toggle_status(index)
    @items[index].toggle_status
  end

  # Method to update the completion status of an item on the list
  def completed?
    return @items.all? {|item| item.completion_status == true}
  end

  # Method to print todo list
  def print_list
  header = "#{@title} -- Completed: #{completed?}"
    puts "-" * header.length
    puts header
    puts "-" * header.length
    longest_word = @items.inject(0) do |previous_length, current_word|
      current_length = current_word.description.length
      current_length > previous_length ? current_length : previous_length
    end
    @items.each_index {|index|
      puts "#{index} - [#{items[index].priority}]#{@items[index].description}".ljust(longest_word + 10) + "Completed: #{@items[index].completion_status}"
    }
  end

end

class Item
  attr_accessor :description, :completion_status, :priority

  # Initialize item with a description and marked as not complete
  def initialize(item_description, priority)
    @description = item_description
    @completion_status = false
    @priority = priority
  end

  def toggle_status
    @completion_status = !@completion_status
  end


  # Method that formats the description and completion status of items
  def print_item
    puts "#{@description} Completed: #{@completion_status} Priority: #{@priority}"
  end

end
