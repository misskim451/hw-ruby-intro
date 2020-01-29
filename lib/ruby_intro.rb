# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  a = 0
  arr.each {|x| a+=x}
  return a
end

def max_2_sum arr
  if arr.length()==0
    return 0
  end
  
  if arr.length()==1
    return arr.at(0)
  end
  
  a = arr.at(0)
  track = 0
  
  arr.each_with_index do |item, index|
    if a<item
      a = item
      track = index
    end
  end
  
  
  arr.delete_at(track)
  b= arr.at(0)
  arr.each{ |x| if b<x 
    b=x
  end
  }
  a = a+b
end

def sum_to_n? arr, n
  for i in 0...arr.length do
    check = n - arr.at(i)
    for j in 0...arr.length do
      if (i!=j) && (check == arr.at(j)) 
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  a = "Hello, " + name
end

def starts_with_consonant? s
  if s.empty? 
    puts "empty"
    return false
  end
  
  vowel = ['a','e','i','o','u','A','E','I','O','U']
  lowercase = ('a'..'z')
  uppercase = ('A'..'Z')
  
  if vowel.include? s[0].chr
    puts "vowel"
    return false
  end
  
  if (lowercase.include? s[0].chr) || (uppercase.include? s[0].chr)
    puts "lower or upper"
    return true
  end
  
  return false
end
def binary_multiple_of_4? s
  if s.empty?
    return false
  end
  cut = s.split(//).last(7).join
  sum = 0
  track = cut.length
  cut.split('').each{ |i|
    if i=="1" || i=="0"
      if i=="1" 
       sum+=2**(track-1)
      end
    else
      return false
    end
    track = track - 1
  }
  puts sum
  if sum>100
    sum-=100
  end
  if(sum.modulo(4)==0)
    return true
  end
  return false
end

# Part 3

class BookInStock
  def initialize(_isbn, _price)
    if _isbn.empty? || _price <= 0
      raise ArgumentError.new("You messed up!")
    end
    @isbn=_isbn
    @price=_price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(_isbn)

    @isbn=_isbn
    
  end
  
  def price=(_price)

    @price = _price
  end
  
  def price_as_string
    sprintf("$%.2f", @price)
  end
  
end
