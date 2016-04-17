class TodoList
  attr_accessor :title, :items, :user

  # Initialize to-do list with a title and no items
  def initialize(list_title, user)
    @title = list_title
    @user = user
    @items = Array.new
  end

  # Method to rename list
  def rename(new_title)
    @title = new_title
  end

  # Method to add items to list
  def add_item(new_item, completion_status = false, due_date)
    item = Item.new(new_item, completion_status, due_date)
    @items << item
  end

  def toggle_status(index)
    @items[index].toggle_status
  end

  # Method to add due date
  def due_date(date)
    @due_date = "#{date.strftime("%d-%m-%Y")}"
  end

  # Method to delete items from list
  def remove_item(index)
    @items.delete(index)
  end

  # Method to update the completion status of an item on the list
  def completed?(index)
    return @items.all? {|item| item.completion_status == true}
  end

  # Method to print todo list
  def print_list
    puts @name

    @items.each do |item|
      item.print_item
    end
  end

end

class Item
  attr_accessor :description, :completed_status, :priority

  # Initialize item with a description and marked as not complete
  def initialize(item_description, completion_status, due_date)
    @description = item_description
    @completion_status = false
  end

  def toggle_status
    @completion_status = !@completion_status
  end

  # Method to see if an item on the list is completed (boolean)
  def completed?
    @completion_status = false || true
  end

  # Method to say if item is high priority or not
  def high_priority
    @priority = false || true
  end

  # Method to add due date
  def due_date(date)
    @due_date = "#{date.strftime("%Y-%m-%d")}"
  end

  # Method that formats the description and completion status of items
  def print_item
    puts "[#{@completed ? "X" : " "}] #{@description}"
  end

end
