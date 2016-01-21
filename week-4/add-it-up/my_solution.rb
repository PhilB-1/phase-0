# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
#create a method called total with and argument array
#create variable named current_total with initail value of 0

#create a while statement that loops until i is less than the number of items in the array
#add value of array index i to current_total variable
#add 1 to value of i

#return current_total

# Input: array
# Output: integer
# Steps to solve the problem.


# 1. total initial solution

def total(array)
    i = 0
    current_total=0
    while i < array.length
        current_total = current_total + array[i]
        i += 1
    end
    return current_total
end


# 3. total refactored solution

def total(array)
    array.inject(0) { |sum, el| sum + el}
end




# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: one string
# Steps to solve the problem.

#define a method sentance_maker
#If the not the last word in the array print each word in the array with a space
#If the last word in the array print out the word with a period instead of space
#Make the first letter capitalized.


# 5. sentence_maker initial solution
def sentence_maker(array)
    (array.join(" ") + ".").capitalize
end



# 6. sentence_maker refactored solution

