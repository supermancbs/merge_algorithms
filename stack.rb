require './linked_list.rb'
require 'pry'

class Stack
  attr_reader :head

  def initialize
    @head = nil
  end

  def push(value)
    new_head = Node.new value, @head
    @head = new_head
  end

  def pop
    @head = @head.next_node
  end
end

stack = Stack.new
stack.push 3
stack.push 5
stack.push 7
stack.pop
stack.push 8
print stack.head
Pry.start
