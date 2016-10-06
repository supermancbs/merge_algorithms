require 'pry'

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

  def print_all
    current_node = self
    result =  "["
    while current_node.next_node != nil
      result+= current_node.value.to_s + ", "
      current_node = current_node.next_node
    end
    result + current_node.value.to_s + "]"
  end

end

head = Node.new 8, nil
snd = Node.new 7, nil
head.next_node = snd
puts head.print_all
