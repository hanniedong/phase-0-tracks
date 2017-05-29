class TodoList

def initialize(list)
  @list = list
end

def get_items
  @list
end

def add_item(new_item)
    @list << new_item
end

def delete_item(item)
  @list.delete(item)
end

def get_item(integer)
  @list[integer]
end

end
