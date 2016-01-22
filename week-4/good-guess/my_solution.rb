# Good Guess

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def good_guess?(num)
  if num == 42
    p true
  else
    p false
  end
end

good_guess?(rand(100))
good_guess?(42)