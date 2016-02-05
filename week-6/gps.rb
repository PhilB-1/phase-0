# Your Names
# 1)Phillip Barnett
# 2)Mitch Kroska

# We spent [1.25] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_servings_needed)
  food_options = {"cookie" => 1, "cake" =>  5, "pie" => 7}

 #This will iterate over the hash Library and check to see if one the keys matches the argument item_to_make. If it doesn't it will subtract one from the counter for each item it does not match.
  if food_options.include?(item_to_make) == false
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  #
  serving_size = food_options[item_to_make]
  #
  remaining_servings_needed = num_of_servings_needed % serving_size

  extra_servings = serving_size - remaining_servings_needed

  if remaining_servings_needed == 0
    return "Calculations complete: Make #{num_of_servings_needed / serving_size} #{item_to_make}"
  else
    return "Calculations complete: You still need #{remaining_servings_needed} serving. Make #{(num_of_servings_needed / serving_size) + 1} #{item_to_make}s. You will have #{extra_servings} extra servings of #{item_to_make}."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
I learned that variable, method, and argument names are very important for the readability of code. This is especially true when it mimicks a real world problem, having clear names helps the person reading the code to understand what is happening. It's not something I immediately think of when it comes to refactoring, but it is something I will definitely employ and be better at as I write my code in the future.

Did you learn any new methods? What did you learn about them?
One new method learn this week was the values_at method which will put all the values of a hash into an array. That can be very helpful in certain situations, but as we saw in this activity was unnecessary.

What did you learn about accessing data in hashes?
I learned that often times if you only need the value it is often easiest to just directly access it through it's key. It is often the simpliest and the easiest to read. Otherwise try to use methods that work for your particular need at that time.

What concepts were solidified when working through this challenge?
Many concepts of refactoring, such as DRY, readability, and simplify code based on what you want it to do.


=end