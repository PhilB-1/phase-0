# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below
=begin

find the lengths of both arrays
push the contents of array_2 into array_1
iterate this the same number of the length of array_2
one more than the length of array_1 will be the starting place of pushing into the array if you use indexing
you may also be able to push it
=end
def array_concat(array_1, array_2)
  i = 0
  while i < array_2.length
    array_1[(array_1.length + i)] = array_2[i]
    i +=1
  end
  p array_1
end