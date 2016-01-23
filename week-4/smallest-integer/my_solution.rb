# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
#def smallest_integer(list_of_nums)
#  list_of_nums = list_of_nums.sort
#  p list_of_nums[0]
#
#end

#def smallest_integer(list_of_nums)
#  array = []
#  list_of_nums.each |x , y| do
#    if x < y
#      array << x
#    end
#  end
#  p array[0]

#end

=begin
def smallest_integer(list_of_nums)
  array =[]
  x = list_of_nums.length
  i = 0
  while i < x
    if list_of_nums[i] < list_of_nums[(i + 1)]
      array << list_of_nums[i]
    end
    i += 1
  end
  p array[0]
end


def smallest_integer(list_of_nums)
  i = 0
  j = i + 1
  while i < (list_of_nums-1)
    if list_of_nums[i] > list_of_nums[j]
      y = list_of_nums[i]
      z = list_of_nums[j]
      list_of_nums[i] = z
      list_of_nums[j] = y
      i=0
    else
      i += 1
    end

  end
  print list_of_nums
  p list_of_nums[0]
end

smallest_integer([6,9,4,14,3,100])
#smallest_integer([])
=end

def smallest_integer(list_of_nums)
  array =[]
  array[0] = list_of_nums[0]
  i = 0
  while i < list_of_nums.length
    if array[0] > list_of_nums[i]
      array[0] = list_of_nums[i]
    end
    i += 1
  end
  p array[0]
end

smallest_integer([6,9,4,14,3,100])
smallest_integer([])