# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]
p array [1][1][2][0]
# attempts:1
# ============================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}
p hash [:outer][:inner]["almost"][3]
# attempts:1
# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}
p nested_data[:array][1][:hash]
# attempts:1
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
  number_array.map! do |x|
    if x.is_a? Integer
      x + 5
    elsif x.is_a? Array
      x.map! do |y|
        y + 5
      #i = 0
      #while i < x.length
       # x[i] += 5
        #i += 1
      end
    end
  end
p number_array
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
  startup_names.map! do |x|
    if x.is_a? String
      x + "ly"
    elsif x.is_a? Array
      x.map! do |y|
        if y.is_a? String
          y + "ly"
        elsif y.is_a? Array
          y.map! do |z|
            z + "ly"
          end
        end
      end
    end
  end
p startup_names

# Reflection
# What are some general rules you can apply to nested arrays?
# When trying to access you start with the outermost index and then move into the nested arrays until you reach the item you are looking for. You should start by counting how many nested arrays there are.

# What are some ways you can iterate over nested arrays?
# If you are trying to alter the array itself you can use the .map! enumerable method. You should also us if and is_a? to check to see if the item is an array to instruct it how to proceed whether it can affect that item or if you need to iterate it again.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# I better understand why I should use map! over map and each, because you need to change the array itself. I also learned about the .flatten method which may be helpful if you don't know what's in the array and can change it into a 1d array.