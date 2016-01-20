puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

puts first_name + " " + middle_name + " " + last_name

puts "What's your favorite number?"

fav_num = gets.chomp

better_num = fav_num.to_i + 1

puts "A bigger and better number is " + better_num.to_s + "."

=begin
How do you define a local variable?
Local variables contain values, such as numbers and strings, that can be used within various methods or functions. It allows you to reuse a value over and over again without having to rewrite every time. You can also manipulate and change the values of local variables.

How do you define a method?
A method is a blcok of code that you can run over and over with differing results by passing different arguments into it.

What is the difference between a local variable and a method?
A local variable holds a single value, while a method is code block that can be run. A method might contain multiple local variables.

How do you run a ruby program from the command line?
You type into the command line ruby ruby_filename.rb.

How do you run an RSpec file from the command line?
You type into the command line rspec rspec_filename.rb.

What was confusing about this material? What made sense?
I'm still making sense of rspec and I had an issue with one of the test, but I finally figured it out after reading more carefully and printing the statement to see what was happening. All the methods made sense and were very clear.
=end

=begin

 Challenge Links

 https://github.com/PhilB-1/phase-0/tree/master/week-4/define-method/my_solution.rb

 https://github.com/PhilB-1/phase-0/tree/master/week-4/address/my_solution.rb

 https://github.com/PhilB-1/phase-0/tree/master/week-4/math/my_solution.rb

=end
