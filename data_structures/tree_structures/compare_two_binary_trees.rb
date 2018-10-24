# Definition for singly-linked list.
class BinaryTree
    attr_accessor :data, :right, :left
    def initialize(data)
        @data = data
        @right = nil
        @left = nil
    end
end

a = BinaryTree.new(4)
b = BinaryTree.new(5)
c = BinaryTree.new(3)
a.right = b
a.left = c

d = BinaryTree.new(4)
e = BinaryTree.new(5)
f = BinaryTree.new(3)
d.right = e
d.left = f

g = BinaryTree.new(9)
g.right = e
g.left = f

def compare(first, second)
  return true if first.nil? or second.nil?

  if first.data == second.data and compare(first.right, second.right) and compare(first.left, second.left)
    return 'they are equal'
  else
    return 'one is empty, or false'
  end
end

p compare(a, d)
