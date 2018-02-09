# When done, submit this entire file to the autograder.

# Part 1

def sum (arr)
  # YOUR CODE HERE
 result=0
 if(arr.length==0)
   return result
 end
   arr.each do |i|
     result+=i
 end
return result
end

def max_2_sum(arr)
  # YOUR CODE HERE
  case arr.length
  when 0
    return 0
    
  when 1
    return arr[0]
      
  when 2
    return arr[0]+ arr[1]
    
  else
  max= arr.max
  arr.delete_at(arr.index max)
  return max + arr.max
  end
    
end

def sum_to_n?( arr, n)
  # YOUR CODE HERE
  if arr.empty?
    return false
  else
    arr.permutation(2).any?{|pair| pair[0]+pair[1]==n}
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, "+ name
end

def starts_with_consonant?( s)
  # YOUR CODE HERE
  if s.empty? || !valid?(s)
    return false
  end
  vowel=['a','e','i','o','u']
  !vowel.include? s.downcase[0]
end

def valid?(str)
  (str =~ /[^a-zA-Z0-9]/).nil?
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if !s.empty? && validbinary?(s)
  s.to_i(2)%4==0
  else
    false
  end
end

def validbinary?(s)
 s !~ /[^01]/
end

# Part 3

class BookInStock
  
  def initialize(isbn,price)
    if isbn.empty?|| price<=0
      raise ArgumentError
    end
    
    @isbn,@price=isbn,price
  end
  
  def price
    @price
  end
  
  def price=(value)
    @price=value
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(value)
    @isbn=value
  end
  
  def price_as_string()
    "$".concat("%.2f" % @price)
  end
    
end
