#Attr Methods

# I worked on this challenge [by myself]

# I spent [3] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :name

  def initialize
    @name = "Phillip"
    #return @name
  end

  # def names
  #   return @name
  # end

end


class Greetings
  def initialize
    @phil = NameData.new
    # phil_name = phil.name
  end

  def hello
    puts "Hello #{@phil.name}! How wonderful to see you today."
    # puts @phil.name
  end

end


greet = Greetings.new
greet.hello

# my_name = Greetings.new
# my_name.hello


# Reflection
=begin

Release 1

What are these methods doing?
These methods create a new object that establish the name, age, and ocupation and print that info to the console. You can also change the information and reprint it out with the new info.

How are they modifying or returning the value of instance variables?
They return the instance variabls by writing the name of the variable in the method. They are modified through methods that directly change the value of the variables using the assignment operator. They also use equal signs in the method name itself and use the assignment operator when calling the method.

Release 2

What changed between the last release and this release?
This release added attr_reader and asigned age to it. It also commented out the method age. This allowed the age to be returned without having a method dedicated to doing that.

What was replaced?
The call of the method what_is_age on the object was replace by just calling the method using the attr_reader age.

Is this code simpler than the last?
This code is simpler because there are less methods to keep track of and less code.

Release 3

What changed between the last release and this release?
This release added attr_writer and asigned age to it. It also commented out the method change_my_age. This allowed the age to be returned without having a method dedicated to doing that.

What was replaced?
The call of the method change_my_age on the object was replace by just calling the method using the attr_writer age.

Is this code simpler than the last?
This code is simpler because there are less methods to keep track of and less code.

Release 6
What is a reader method?
A reader method allows you to read the variable outside the class.

What is a writer method?
A writer method allows you to write to a variable from outside the class.

What do the attr methods do for you?
The allow you to either read or write to a variable from outside of the class by evoking it using the symbol name as a method.

Should you always use an accessor to cover your bases? Why or why not?
I would only use an accessor if you know you are going to use. It is especially true for writer methods, because it may adversely affect your class later on. However, using an accessor can simplify your code.

What is confusing to you about these methods?
The most confusing part of these methods is how and when you can evoke them, especially when initializing and using with a different class. That was my biggest struggle.

=end