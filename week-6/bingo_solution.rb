# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  #I will use rand(4) and rand(100) to create the correct letter and correct number. I will have to assign a number to each number 1 through 4

# Check the called column for the number called.
  #fill in the outline here
  # Use a loop to check to check the same index in each array.

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  # Use an if state in the above loop to replace the number with an x if found

# Display a column to the console
  #fill in the outline here
  # use puts and loop to display all the numbers in the column like you did to search for it.

# Display the board to the console (prettily)
  #fill in the outline here
  # use puts on the array and a loop to display the full board nicely.

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     @letter = ""
#     letter_number = rand(4)
#     case letter_number
#     when 0
#       @letter = "B"
#     when 1
#       @letter = "I"
#     when 2
#       @letter = "N"
#     when 3
#       @letter = "G"
#     when 4
#       @letter = "O"

#     end

#     @number = rand(100)

#     puts @letter + @number.to_s
#   end

#   def check
#     case @letter
#     when "B"
#       i = 0
#       5.times do
#         if @bingo_board[i][0] == @number
#           @bingo_board[i][0] = "X"
#           break
#         else
#           i += 1
#         end
#       end
#     when "I"
#       i = 0
#       5.times do
#         if @bingo_board[i][1] == @number
#           @bingo_board[i][1] = "X"
#           break
#         else
#           i += 1
#         end
#       end
#     when "N"
#       i = 0
#       5.times do
#         if @bingo_board[i][2] == @number
#           @bingo_board[i][2] = "X"
#           break
#         else
#           i += 1
#         end
#       end
#     when "G"
#       i = 0
#       5.times do
#         if @bingo_board[i][3] == @number
#           @bingo_board[i][3] = "X"
#           break
#         else
#           i += 1
#         end
#       end
#     when "O"
#       i = 0
#       5.times do
#         if @bingo_board[i][4] == @number
#           @bingo_board[i][4] = "X"
#           break
#         else
#           i += 1
#         end
#       end
#     end
#   end

#   def display_column
#     case @letter
#     when "B"
#       i = 0
#       5.times do
#         puts @bingo_board[i][0]
#         i += 1
#       end
#     when "I"
#       i = 0
#       5.times do
#         puts @bingo_board[i][1]
#         i += 1
#       end
#     when "N"
#       i = 0
#       5.times do
#         puts @bingo_board[i][2]
#         i += 1
#       end
#     when "G"
#       i = 0
#       5.times do
#         puts @bingo_board[i][3]
#         i += 1
#       end
#     when "O"
#       i = 0
#       5.times do
#         puts @bingo_board[i][4]
#         i += 1
#       end
#     end
#   end

#   def display_board
#     i = 0
#     5.times do
#       print @bingo_board[i]
#       puts
#       i += 1
#     end
#   end

# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @letter = ""
    @letter_number = rand(4)
    case @letter_number
    when 0
      @letter = "B"
    when 1
      @letter = "I"
    when 2
      @letter = "N"
    when 3
      @letter = "G"
    when 4
      @letter = "O"

    end

    @number = rand(100)

    puts @letter + @number.to_s
  end

  def check
      i = 0
      5.times do
        if @bingo_board[i][@letter_number] == @number
          @bingo_board[i][@letter_number] = "X"
          break
        else
          i += 1
        end
      end
    end

  def display_column
      i = 0
      5.times do
        puts @bingo_board[i][@letter_number]
        i += 1
      end
  end

  def display_board
    i = 0
    5.times do
      print @bingo_board[i]
      puts
      i += 1
    end
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
piece_called = new_game.call
piece_checked = new_game.check
column = new_game.display_column
board = new_game.display_board


#Reflection
=begin

How difficult was pseudocoding this challenge?
The pseudocoding wasn't that difficult for thsi challenge. It was already broken down into chucks in the initial code.

What do you think of your pseudocoding style?
I think my pseudocode is a good balance of writing out wht needs to be done in regular speech and what methods or coding ques I may use.

What are the benefits of using a class for this challenge?
It allows you to continually work with the same object to complete the challenge as well as use instance variables across the challenge.

How can you access coordinates in a nested array?
You can access them by using indexing notation such as array[1][0] or array [3][3][2]

What methods did you use to access and modify the array?
I used literal notation, like what is above, to replace the items because it had because it was a particular one in each array.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
I didn't use either of these methods in my solution, but I considered using index and include? but both wouldn't have done what I wanted or would have cause more steps. Index would have only told me what index the number was in if it was there, but I already knew which index to be looking in. Include would have told me if it was in the array at all, but I couldn't use it with a multi-dimensional array.

How did you determine what should be an instance variable versus a local variable?
If I used the variable in different methods across the same object I used an instance variable. If it was only being used in that method I used a local variable.

What do you feel is most improved in your refactored solution?
I was able to elimate a lot of code by turning one local varaible into a instance variable and used that number to represent the letter rather than convert it into the letter and back into a number for the index.

=end