class TodoList
  attr_reader :title, :items

  # Initialize to-do list with a title and no items
  def initialize(list, title)
    @title = list_title
    @items = Array.new
  end
end

class Item
  attr_reader :description, :completed_status

  # Initialize item with a description and marked as not complete
  def initialize(item_description)
    @description = item_description
    @completed_status = false
  end

  def add_item(new_item)
    item = Item.new(new_item)
    @items << item
  end

  def remove_item(item)
    @items.delete(item)
  end

  
    
end
