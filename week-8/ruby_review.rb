# Numbers to English Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
=begin
convert the number into a array using split
find the length of the array
starting from the last number in the array convert it to the proper number
refactors
in teens lessen it by just added teen to some of them
in tens add ty to some of them to shorten code.
loop through and convert all numbers to their word counter part. Then change the numbers in the teens that need to be changed, add hundred to the hundreds, and add 1000 to the thousands.


=end

# Initial Solution
def convert_number(number)
  number_array = number.to_s.split("")
  print number_array
  length = number_array.length
  case number_array[length-1]
  when "1"
    number_array[length-1] = "one"
  when "2"
    number_array[length-1] = "two"
  when "3"
    number_array[length-1] = "three"
  when "4"
    number_array[length-1] = "four"
  when "5"
    number_array[length-1] = "five"
  when "6"
    number_array[length-1] = "six"
  when "7"
    number_array[length-1] = "seven"
  when "8"
    number_array[length-1] = "eight"
  when "9"
    number_array[length-1] = "nine"
  when "0"
    if length == 1
      number_array[length-1] = "zero"
    else
      pop.number_array[length-1]
    end
  end
  if number_array[length-2]
    case number_array[length-2]
    when "1"
      case number_array[length-1]
      when "one"
        number_array[length-2] = "eleven"
      when "two"
        number_array[length-2] = "twelve"
      when "three"
        number_array[length-2] = "thirteen"
      when "four"
        number_array[length-2] = "fourteen"
      when "five"
        number_array[length-2] = "fifteen"
      when "six"
        number_array[length-2] = "sixteen"
      when "seven"
        number_array[length-2] = "seventeen"
      when "eight"
        number_array[length-2] = "eighteen"
      when "nine"
        number_array[length-2] = "nineteen"
      end
      if length == 2
        # number_array.delete_at(length-1)
        number_array[length-1] = ""
      end
    when "2"
      number_array[length-2] = "twenty "
    when "3"
      number_array[length-2] = "thirty "
    when "4"
      number_array[length-2] = "forty "
    when "5"
      number_array[length-2] = "fifty "
    when "6"
      number_array[length-2] = "sixty "
    when "7"
      number_array[length-2] = "seventy "
    when "8"
      number_array[length-2] = "eighty "
    when "9"
      number_array[length-2] = "ninety "
    end
  end
  if number_array[length-3]
    case number_array[length-3]
    when "1"
      number_array[length-3] = "one" + " hundred "
    when "2"
      number_array[length-3] = "two" + " hundred "
    when "3"
      number_array[length-3] = "three" + "hundred "
    when "4"
      number_array[length-3] = "four" + " hundred "
    when "5"
      number_array[length-3] = "five" + " hundred "
    when "6"
      number_array[length-3] = "six" + " hundred "
    when "7"
      number_array[length-3] = "seven" + " hundred "
    when "8"
      number_array[length-3] = "eight" + " hundred "
    when "9"
      number_array[length-3] = "nine" + " hundred "
    end
  end
  puts number_array.join
end

convert_number(0)
convert_number(8)
convert_number(14)
convert_number(99)
convert_number(245)


# Refactored Solution
# def convert_number(number)
#   number_array = number.to_s.split("")
#   print number_array
#   length = number_array.length
#   case number_array[length-1]
#   when "1"
#     number_array[length-1] = "one"
#   when "2"
#     number_array[length-1] = "two"
#   when "3"
#     number_array[length-1] = "three"
#   when "4"
#     number_array[length-1] = "four"
#   when "5"
#     number_array[length-1] = "five"
#   when "6"
#     number_array[length-1] = "six"
#   when "7"
#     number_array[length-1] = "seven"
#   when "8"
#     number_array[length-1] = "eight"
#   when "9"
#     number_array[length-1] = "nine"
#   when "0"
#     if length == 1
#       number_array[length-1] = "zero"
#     else
#       number_array[length-1] = ""
#     end
#   end
#   if number_array[length-2]
#     case number_array[length-2]
#     when "1"
#       case number_array[length-1]
#       when "one"
#         number_array[length-2] = "eleven"
#       when "two"
#         number_array[length-2] = "twelve"
#       when "three"
#         number_array[length-2] = "thirteen"
#       when "four" || "six" || "seven" || "eight" || "nine"
#         number_array[length-2] = number_array[length-1] + "teen"
#       when "five"
#         number_array[length-2] = "fifteen"
#       # when "six"
#       #   number_array[length-2] = "sixteen"
#       # when "seven"
#       #   number_array[length-2] = "seventeen"
#       # when "eight"
#       #   number_array[length-2] = "eighteen"
#       # when "nine"
#       #   number_array[length-2] = "nineteen"
#       end
#       if length == 2
#         number_array[length-1] = ""
#       end
#     when "2"
#       number_array[length-2] = "twenty "
#     when "3"
#       number_array[length-2] = "thirty "
#     when "4"
#       number_array[length-2] = "forty "
#     when "5"
#       number_array[length-2] = "fifty "
#     when "6"
#       number_array[length-2] = "sixty "
#     when "7"
#       number_array[length-2] = "seventy "
#     when "8"
#       number_array[length-2] = "eighty "
#     when "9"
#       number_array[length-2] = "ninety "
#     end
#   end
#   if number_array[length-3]
#     case number_array[length-3]
#     when "1"
#       number_array[length-3] = "one" + " hundred "
#     when "2"
#       number_array[length-3] = "two" + " hundred "
#     when "3"
#       number_array[length-3] = "three" + "hundred "
#     when "4"
#       number_array[length-3] = "four" + " hundred "
#     when "5"
#       number_array[length-3] = "five" + " hundred "
#     when "6"
#       number_array[length-3] = "six" + " hundred "
#     when "7"
#       number_array[length-3] = "seven" + " hundred "
#     when "8"
#       number_array[length-3] = "eight" + " hundred "
#     when "9"
#       number_array[length-3] = "nine" + " hundred "
#     end
#   end
#   puts number_array.join
# end

# convert_number(0)
# convert_number(8)
# convert_number(14)
# convert_number(99)
# convert_number(245)


def convert_number(number)
  number_array = number.to_s.split("")
  print number_array
  length = number_array.length
  i = 1
  while i <= length
    case number_array[length-i]
    when "1"
      number_array[length-i] = "one"
    when "2"
      number_array[length-i] = "two"
    when "3"
      number_array[length-i] = "three"
    when "4"
      number_array[length-i] = "four"
    when "5"
      number_array[length-i] = "five"
    when "6"
      number_array[length-i] = "six"
    when "7"
      number_array[length-i] = "seven"
    when "8"
      number_array[length-i] = "eight"
    when "9"
      number_array[length-i] = "nine"
    when "0"
      if length == 1
        number_array[length-i] = "zero"
      else
        number_array[length-i] = ""
      end
    end
    i +=1
  end

  print number_array

  if number_array[(length-3)] && (length-3) >= 0
    number_array[length-3] = number_array[length-3] + " hundred "
  end
  if number_array[length-2] && (length-2) >= 0
    case number_array[length-2]
    when "one"
      case number_array[length-1]
      when "one"
        number_array[length-2] = "eleven "
      when "two"
        number_array[length-2] = "twelve "
      when "three"
        number_array[length-2] = "thirteen "
      when "four", "six", "seven", "eight", "nine"
        number_array[length-2] = number_array[length-1] + "teen "
      when "five"
        number_array[length-2] = "fifteen "
      end
      if length == 2
        number_array[length-1] = ""
      end
    when "two"
      number_array[length-2] = "twenty "
    when "three"
      number_array[length-2] = "thirty "
    when "four"
      number_array[length-2] = "forty "
    when "five"
      number_array[length-2] = "fifty "
    when "six", "seven", "eight", "nine"
      number_array[length-2] = number_array[length-2] + "ty "
    end
  end
  puts number_array.join
end

convert_number(0)
convert_number(8)
convert_number(16)
convert_number(99)
convert_number(245)



# Reflection
=begin

What concepts did you review or learn in this challenge?
I reviewed using and nesting case statements and if statements, as well as using loops to repeat a task, especially to simplify code.

What is still confusing to you about Ruby?
Just when to use certain methods to do certain things. I feel pretty confident that I can figure out how to do most things, but how much time it will take to figure it out is a concern, but I think I will continue to get faster with practice.

What are you going to study to get more prepared for Phase 1?
I'm just going to keep doing these challenges to continue to develop my skills as well as look through methods to see if I can simplify some of my actions in the future.

=end