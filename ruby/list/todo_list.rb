class TodoList

  def initialize(*args)
    @list = *args
  end

  def get_items
    @list[0]
  end

  def add_item(item)
    @list[0] << item
  end

  def delete_item(item)
    @list[0] = @list[0] - [item]
  end

  def get_item(index)
    @list[0][index]
  end

end
