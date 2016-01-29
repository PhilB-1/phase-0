# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
#Create 2 arrays
#iterate through array using each or while loop.
#use if statement that if contents is a integer push into first array, if not push into second array.
#Push the first array in using index notation and then push in the second array using index notation
def my_array_splitting_method(source)

  integers = []
  everything_else = []
  i = 0
  while i < source.length
    if source[i].is_a? Integer
      integers << source[i]
    else
      everything_else << source[i]
    end
    i += 1
  end
two_d_array = []
two_d_array[0] = integers
two_d_array[1] = everything_else
p two_d_array
end

my_array_splitting_method([1,3,4,"dog","cat"])

def my_hash_splitting_method(source, age)

  #younger_hash = Hash.new
  #older_hash = Hash.new
  younger_pets = []
  older_pets = []

  source.each do |key, value|
    if value <= age
      #younger_hash[key] = value
      younger_pets << [key, value]
    else
      #older_hash[key] = value
      older_pets << [key, value]
    end
  end
  new_array = []
  new_array[0] = younger_pets
  new_array[1] = older_pets
  p new_array
end

my_family_pets_ages = {
  "Evi" => 6,
  "Hoobie" => 3,
  "George" => 12,
  "Bogart" => 4,
  "Poly" => 4,
  "Annabelle" => 0,
  "Ditto" => 3
}

my_hash_splitting_method(my_family_pets_ages, 4)


# Identify and describe the Ruby method(s) you implemented.
#.each which iterates over an array, hash, or string and performs the same action to each item in it.
#.length which tells you the length of a string or how many items there are in an array.
#.is_a? to find out if the information being checked was an integer.


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#Implemented splitting a array and a hash. In both scenrios you were left with an multidimensional array. For the array I used a while loop to iterate over the array because it allowed me use the counter to also push the value being checked into one array for integers and another for all other content. Once the while loop finished it's work I pushed the arrays into another array called two_d_array to hold both arrays.
#For the hash I followed a similar process of creating empty arrays, but used .each instead a while loop to manipulate the hash because it would let me put both the key and value into a new array and push that array into one of the other arrays I had already created. After that it was just pushing those arrays into another array to hold them both, just like I did in the previously problem.
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#It's one thing to know how you did something, but it's something else to explanin it to someone else. I think this will really help me in psuedocoding with others. Also seeing how someone else explained their solution helps to give me other ways to think about attacking similar problems.
#
#
#