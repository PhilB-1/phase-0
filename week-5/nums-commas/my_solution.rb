# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? An integer.
# What is the output? (i.e. What should the code return?) A string of the integer with commas in the appropriate places.
# What are the steps needed to solve the problem?
#Need to convert the integer into a string
# We need to find the length of the string
#Need to split up the characters of the string and put into an array.
# Will probably use a while loop.
# Will change one or more of the items in the array to include a comma based on the length of the array.
#Will need to recombine the array into a string

# 1. Initial Solution
def separate_comma(integer)
  integer = integer.to_s
  length = integer.length
  i = 0
  integer = integer.split("")
  puts integer
  while i < (length - 1)
    if (length - 1) % 3 == 0 && (i % 3 ==0 || i == 0)
      x = integer[i]
      integer[i] = "#{x}" + ","
    elsif (length - 2) % 3 == 0 && ((i-1) % 3 ==0)
      x = integer[i]
      integer[i] = "#{x}" + ","
    elsif (length - 3) % 3 == 0 && ((i-2) % 3 ==0)
      x = integer[i]
      integer[i] = "#{x}" + ","
    end
    i += 1
  end
  puts integer
  integer=integer.join
  p integer
end

separate_comma(1000000)

#Try approaching this by printing out the contents of the array and using indexes divisible by 3 to try and put the comma in the righ place. May also have to incorporate an if statement finding the lenth first and what that's divisible by to know where you are staring.

=begin

What was your process for breaking the problem down? What different approaches did you consider?
I had to think of in what state I could add commas to the information. I also had to think of the pattern of the commas placement and how I could use that to input the comma no matter the length of the number.

Was your pseudocode effective in helping you build a successful initial solution?
It was helpful, but I was pretty sure what code to try so I started building it while I was clearly thinking about it.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
The two newest methods I used were join and split, which I think I may have used in an earlier challenge. They were critical to my solving of this problem.

How did you initially iterate through the data structure?
I initially iterated through it using .split to take each character from the string and turn it into an array that I could futher iterate over.

Do you feel your refactored solution is more readable than your initial solution? Why?
I don't think it's more readable, but I had to refactor a couple things so that it worked properly and would pass all the test.

=end