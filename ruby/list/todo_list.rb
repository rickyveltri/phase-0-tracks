class TodoList

  #Store the list items given on initialization
  def initialize(array)
    @array = array
  end

  #Return array
  def get_items
    @array
  end

  #Add item to array
  def add_item(item)
    @array << item
  end

  #Delete item from array
  def delete_item(item)
    @array.delete(item)
  end

  #Return item by index
  def get_item(item_index)
    @array[item_index]
  end

end