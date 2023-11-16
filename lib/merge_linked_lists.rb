class ListNode
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end


def merge_two_sorted_linked_lists(list1, list2)
  result = []

  # start a new list with a nil value, which you'll need to skip later
  current_node = ListNode.new(nil)
  # we need to keep track of the start of this linked list for later, also
  head = current_node

  while list1 and list2
    if list1.val <= list2.val
      result.push(list1.val)
      list1 = list1.next
    else
      result.push(list2.val)
      list2 = list2.next
    end
  end

  result.push(list1.val) if list1
  result.push(list2.val) if list2
  return result
end

# test cases:
list1 = ListNode.new(1)
list1.next = ListNode.new(3)
list1.next.next = ListNode.new(5)
list2 = ListNode.new(2)
list2.next = ListNode.new(4)
list2.next.next = ListNode.new(6)
puts 'test case 1 failed' if merge_two_sorted_linked_lists(list1, list2) != [1,2,3,4,5,6]


list1 = ListNode.new(1)
list1.next = ListNode.new(2)
list2 = ListNode.new(4)
list2.next = ListNode.new(5)
list2.next.next = ListNode.new(6)
puts 'test case 2 failed' if merge_two_sorted_linked_lists(list1, list2) != [1,2,4,5,6]

list1 = ListNode.new(10)
list1.next = ListNode.new(20)
list1.next.next = ListNode.new(40)
list2 = ListNode.new(0)
puts 'test case 3 failed' if merge_two_sorted_linked_lists(list1, list2) != [0, 10, 20, 40]

puts 'all done!'