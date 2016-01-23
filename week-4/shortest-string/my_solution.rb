# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  words = []
  words[0] = list_of_words[0]
  i = 0
  while i < list_of_words.length
    if words[0].length > list_of_words[i].length
      words[0] = list_of_words[i]
    end
    i += 1
  end
  p words[0]
end
