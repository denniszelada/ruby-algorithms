# Definition for singly-linked list.
class BinaryTree
    attr_accessor :val, :right, :left
    def initialize(val)
        @val = val
        @right = nil
        @left = nil
    end
end

a = BinaryTree.new(4)
b = BinaryTree.new(5)
c = BinaryTree.new(3)

a.right = b
a.left = c

p a
