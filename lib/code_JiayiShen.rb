# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.inject(0){|sum,x| sum + x }
end

def max_2_sum arr
  sort_arr = arr.sort
  n = sort_arr.length
  if n == 0
    return 0
  elsif n == 1
    return arr[0]
  else  
  	return sort_arr[n-1] + sort_arr[n-2]
  end  
end

def sum_to_n? arr, n
  if arr.empty? && n.zero?
    return false
  else  
    arr.combination(2).any? {|a, b| a + b == n }
  end  
end

# Part 2

def hello(name)
  a = "Hello, #{name}"
  return a
end

def starts_with_consonant? s
  ini = s[0]
  if ini == nil
    return false
  elsif ini.downcase =~ /[b-df-hj-np-tv-z]/    
    return true
  else
    return false
  end  
end

def binary_multiple_of_4? s
  if (s =~ /[01]/) == 0 and s[s.length-1] == "0" and s[s.length-2] == "0"
      return true
  else  
    return false
  end  
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if  isbn == nil || isbn.length == 0
    raise ArgumentError if price <= 0
    
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn # sugar for generating getters/setters

  def isbn
    @isbn
  end  
  def price
    @price
  end
  def isbn=(isbn)
    @isbn = isbn
  end 
  def price=(price)
    @price = price
  end

  def price_as_string
    "$%0.2f" % @price
  end
end
