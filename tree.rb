require 'pry'

class TreeNode
  attr_accessor :value, :left, :right
  def initialize(value, left=nil, right=nil)
    @value = value
    @left = left
    @right = right
  end

end

Pry.start
