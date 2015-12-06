class Todo
  DONE_MARKER = "X"
  UNDONE_MARKER = " "

  attr_accessor :title, :description, :done

  def initialize(title, description="")
    @title = title
    @description = description
    @done = false
  end


  def done!
      self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end
end

class TodoList
  attr_accessor :title, :todos

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(item)
    item.class == Todo ? todos << item : "Can only add Todo objects"
    todos
  end

  def <<(item)
    item.class == Todo ? todos << item : "Can only add Todo objects"
    todos
  end
end


# tests

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")
list = TodoList.new("Today's Todos")

list.add(todo1)
list.add(3)
list << todo2

p list