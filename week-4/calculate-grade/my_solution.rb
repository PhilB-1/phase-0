# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def get_grade(n)
  puts n
  case n
  when 90..100
    p "A"
  when 80..89
    p "B"
  when 70..79
    p "C"
  when 60..69
    p "D"
  when 00..59
    p "F"
  else
    puts "Please enter a number."
  end

end

get_grade(rand(100))
