# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
   # Your code goes here
  if (a + b) > c && c > (a-b).abs
    return true
  elsif (c + b) > a && a > (c-b).abs
    return true
  elsif (a + c) > b && b > (a-c).abs
    return true
  else
    return false
  end
end
