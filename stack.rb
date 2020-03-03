class Stack
  def initialize
    @stack = []
    @max_stack = []
  end

  def push(value)
    new_max = value

    unless max_stack.empty?
      last_max = max_stack.last
      new_max = [value, last_max].max
    end

    max_stack << new_max
    stack << value
  end

  def pop
    raise 'Stack is empty!' if stack.empty?
    last_value = stack.pop
    max_stack.pop
    last_value
  end

  def max
    raise 'Stack is empty!' if stack.empty?
    max_stack.last
  end

  private

  attr_reader :stack, :max_stack

end