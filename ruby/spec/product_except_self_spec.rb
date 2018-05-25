# frozen_string_literal: true

require_relative "../src/product_except_self.rb"

describe "product_except_self" do
  it "works for the example case" do
    arr = [1, 2 , 3, 4]
    expect(product_except_self(arr)).to match_array([24, 12, 8, 6])
  end

  it "works with zero" do
    arr = [0, 0]
    expect(product_except_self(arr)).to match_array([0, 0])
  end
end
