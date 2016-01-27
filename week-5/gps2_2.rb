# Method to create a list

# 2. Return empty hash when method is called
def create_list(groceries)
  # 1. Create empty hash
  # set default quantity
  grocery_list = Hash.new(0)

  groceries.split(' ').each do |item|
    grocery_list[item] = 0
  end

  # p grocery_list
  print_list(grocery_list)
  # print the list to the console [can you use one of your other methods
end


# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
def add_item(list, grocery, quantity)
  list[grocery] = quantity
  # return list
end
# input: item name and optional quantity
# steps:
# output:

# Method to remove an item from the list
def remove_item(list, grocery)
  list.delete(grocery)
end

# input:
# steps:
# output:

# Method to update the quantity of an item
def update_quantity(list, grocery, quantity)
  list[grocery] = quantity
end
# input:
# steps:
# output:

# Method to print a list and make it look pretty
def print_list(list)
  list.each do |item, quantity|
    puts "#{item}" + " : " + "#{quantity}"
  end
end
# input:
# steps:
# output:



# DRIVER CODE
test_grocery_list = create_list("apples oreos bread")
p add_item(test_grocery_list, "cake", 2)
p remove_item(test_grocery_list, "cake")
p update_quantity(test_grocery_list, "oreos", 2)
print_list(test_grocery_list)

# Reflection
=begin

What did you learn about pseudocode from working on this challenge?
I learned that its to guide your next steps and it helps to organize ideas and know what methods you want to use before writing code.

What are the tradeoffs of using Arrays and Hashes for this challenge?
An array would not work at all for this challenge. If you used an array each grocery item and its quantiy would be it's own value. The hash allows you to directly associate the item with the quantity and easily change the value or remove the item from the hash if you need to.

What does a method return?
A method automatically returns the last calculation or function done within the method. You can explicitly tell the method to return something.

What kind of things can you pass into methods as arguments?
You can pass anything, numbers, strings, arrays, variables, and using the last what is returned from another method in your code.

How can you pass information between methods?
You must set a method equal to a variable name when you call so that the value returned when that method is called can be passed into another method.

What concepts were solidified in this challenge, and what concepts are still confusing?
Hashes were really solidified as well as passing between methods with using classes and global variales. I am still a little confused around all the difference instances when returning something is beneficial and how you would use it.

end
