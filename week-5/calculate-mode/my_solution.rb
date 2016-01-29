# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
mode_array = ["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"]
def mode(array)
  #value = 0
  mode_hash = Hash.new(0)
  #count = 0
  array.each do |num|
    puts mode_hash[num] = mode_hash[num] += 1
  end

  mode_hash = mode_hash.sort_by {|_key, value| value}
  mode = []
  #mode << mode_hash[-1][0]
  i = 0
  while i < (mode_hash.length)
    if mode_hash[i][1] == mode_hash[-1][1]
     mode << mode_hash[i][0]
    end
    i += 1
  end
  p mode.sort!
  #puts mode_hash
end
mode(mode_array)



# 3. Refactored Solution




# 4. Reflection
=begin

Which data structure did you and your pair decide to implement and why?
We actually decide to use both a hash and an array.The has was the best way to initiialy organize the desire information because we could use the numbers themselves for the keys and could increment the values to count the number of times they appeared in the original array. We then used the array to organize the information in the hash by size.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
Yes, this problem had so many sections and even after breaking it down as uch as we could we started writing the code and found out there was more we need to work out and we had to write out what we expected to happen.

What issues/successes did you run into when translating your pseudocode to code?
The hardest part was understanding the behavior of hashes and how we could manipulate the values inside of it.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
The two main methods we used were .each and .sort_by. .sort_by was very helpful to organize the hash into an array once we counted the occurence of every number.
=end