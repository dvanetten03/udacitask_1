class TodoList
  attr_reader :title, :items

  # Initialize to-do list with a title and no items
  def initialize(list_title)
    @title = list_title
    @items = Array.new
  end

  # Method to rename list
  def new_title(new_title)
    @title = new_title
  end

  # Method to add items to list
  def add_item(new_item)
    item = Item.new(new_item)
    @items << item
  end

  # Method to delete items from list
  def remove_item(item)
    @items.delete(item)
  end

  # Method to update the completion status of an item on the list
  def update_status
  end

  # Method to print todo list
  def print_list
  end

end

class Item
  attr_reader :description, :completed_status

  # Initialize item with a description and marked as not complete
  def initialize(item_description)
    @description = item_description
    @completed_status = false
  end

  # Method to see if an item on the list is completed (boolean)
  def completed?
    @completed_status = false || true
  end

  # Method that formats the description and completion status of items
  def printing_items
  end

end
