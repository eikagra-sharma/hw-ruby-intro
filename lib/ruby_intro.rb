# When done, submit this entire file to the autograder.
require 'set'
# Part 1

def sum arr
  arr.reduce(0, :+)
end

def max_2_sum arr
  return arr.max(2).reduce(0, :+)
end

def sum_to_n? arr, n
  if arr.length < 2 then
    return false
  else
    set = Set.new(arr)
    arr.each do |elem|
      set.delete(elem)
      if set.member?(n - elem) then return true end
    end
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  s =~ /^([10]*00|0)$/
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError.new("isbn must be a non-empty string")
    end
    if price <= 0
      raise ArgumentError.new("price must be greater than zero")
    end
      
    @isbn = isbn
    @price = price
  end
  
  def price_as_string()
    sprintf("$%2.2f", @price)
  end
end
