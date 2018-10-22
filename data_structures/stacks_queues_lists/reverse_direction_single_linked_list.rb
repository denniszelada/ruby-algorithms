# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

def reverse(list)
  current = list
  prev = nil
  nxt = nil

  while(current) do 
      nxt = current.next
      p 'nxt'
      p nxt
      current.next = prev
      p 'current.next'
      p current.next
      prev = current
      p 'preve'
      p prev
      current = nxt
      p 'current'
      p current
  end

    
  head = prev


end

a = ListNode.new(1)
b = ListNode.new(2)
c = ListNode.new(3)
d = ListNode.new(4)
a.next = b
b.next = c
c.next = d
p reverse(a)
