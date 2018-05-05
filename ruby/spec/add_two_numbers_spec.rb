# frozen_string_literal: true

require_relative "../src/add_two_numbers.rb"

describe "add_two_numbers" do
  it "works for the example case" do
    # List 1: 2 -> 4 -> 3
    a = ListNode.new(2)
    b = ListNode.new(4)
    c = ListNode.new(3)
    b.next = c
    a.next = b

    # List 2: 5 -> 6 -> 4
    d = ListNode.new(5)
    e = ListNode.new(6)
    f = ListNode.new(4)
    e.next = f
    d.next = e

    # Expected list: 7 -> 0 -> 8
    g = ListNode.new(7)
    h = ListNode.new(0)
    i = ListNode.new(8)
    h.next = i
    g.next = h

    returned_node = add_two_numbers(a, d)

    # Expectations
    expect(returned_node.val).to be(7)
    expect(returned_node.next.val).to be(0)
    expect(returned_node.next.next.val).to be(8)
    expect(returned_node.next.next.next).to be_nil
  end
end
