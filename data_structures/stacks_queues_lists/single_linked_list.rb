# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

a = ListNode.new(1)
b = ListNode.new(2)
a.next = b
