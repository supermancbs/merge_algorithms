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

  def reverse_list
    return self if self==nil or self.next_node==nil
    next_node = self.next_node
    next_head = self.next_node.reverse_list
    next_node.next_node = self
    self.next_node = nil
    return next_head
  end

end

# head = Node.new 8, nil
# snd = Node.new 7, nil
# head.next_node = snd
# puts head.print_all
# head.reverse_list
# puts snd.print_all

# Pry.start
