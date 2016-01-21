# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#  end
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#line 226
# 3. What is the type of error message?
#It is a syntax error
# 4. What additional information does the interpreter provide about this type of error?
#it expected an end-of-input and expecting keyword_end=end.
# 5. Where is the error in the code?
#The error is actually in line 16. There should be another end statement to end the while loop.
# 6. Why did the interpreter give you this error?
#Apparently the interpreter must have been looking throughout the entire file for the end statement and when it doesn't it says it's expecting it on the last line of your which is where it is not.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#line 36
# 2. What is the type of error message?
#it is a NameError
# 3. What additional information does the interpreter provide about this type of error?
#It says there is a undefined local variable or method "southpark"
# 4. Where is the error in the code?
#The error is that there is variable south_park and it doesn't = anything thus being undefined.
# 5. Why did the interpreter give you this error?
#Varialbes have to be defined in ruby. They can't exist undefined.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#line 66 & 70
# 2. What is the type of error message?
#Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#It tells you that in the method cartmans_phrase, it has the wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#The error is in line 70 where the method is called.
# 5. Why did the interpreter give you this error?
#The error is there because you are calling a method with an argument, but the method does not take arguments.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
#line 85 and 89
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#'cartman_says': wrong number of arguments
# 4. Where is the error in the code?
#The error is on line 89 where the method cartman says is called.
# 5. Why did the interpreter give you this error?
#It is expecting an argument when the method cartman_says is called, but it called it without an argument.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#line 106 and 110
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#cartmans_lie: wrong number of arguments
# 4. Where is the error in the code?
#The error is where the method cartmans_lie is being called.
# 5. Why did the interpreter give you this error?
#The method cartmans_lie has two arguments, but is being called with only one argument which ruby won't do.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#line 125
# 2. What is the type of error message?
#TypeError
# 3. What additional information does the interpreter provide about this type of error?
#String can't be coerced into Fixnum
# 4. Where is the error in the code?
#It's in the placement of the integer and the string. They should be reversed.
# 5. Why did the interpreter give you this error?
#You can multiply a string by a number to print or return a string that number of times, but you cannot do the reverse.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#Line 40
# 2. What is the type of error message?
#ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#divided by zero
# 4. Where is the error in the code?
#It is in the integer division where 20 is being divided by 0.
# 5. Why did the interpreter give you this error?
#This math operation does not give an answer and that is why ruby can't do it. You cannot divide any number by 0.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#Line 156
# 2. What is the type of error message?
#LoadError
# 3. What additional information does the interpreter provide about this type of error?
#require relative: cannot load file and where the file should be located.
# 4. Where is the error in the code?
#The error is in the filename and location
# 5. Why did the interpreter give you this error?
#Ruby is trying to load a file that doesn't exist, so when it can't find the file it gives an error.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin

Which error was the most difficult to read?
The second error that was missing the end statement was the hardest to read. The line being the last line of code was a little mislead and made me think there was something wrong with my comments, but I couldn't understand how that could be, especially with end being part of the error.

How did you figure out what the issue with the error was?
I just started to look from the top down at all the code blocks because I knew errors go in order from top to bottom. I noticed that the next piece of code was missing and end statement and that solved my issue and took me to the next error. This was very helpful because it was unusual, but I'm sure will come up in the future.

Were you able to determine why each error message happened based on the code?
Yes I was able to understand each error message based on the code. I could see clear correlations.

When you encounter errors in your future code, what process will you follow to help you debug?
I will first look at the line number, then the type or error, look at the information in the error message, and then compare that to the actually line of code to try and solve the problem.

=end