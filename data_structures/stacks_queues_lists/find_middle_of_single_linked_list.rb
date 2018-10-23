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
c = ListNode.new(3)
d = ListNode.new(4)

a.next = b
b.next = c
c.next = d

def find_middle(list)
  k = 0
  middle = list
  current = list

  while(current) do
    current = current.next
    k += 1
    if k % 2 == 0
      middle = middle.next
    end
  end
  middle
end

p find_middle(a)
