# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
#def factorial(number)
#    product = 1
#    1.upto(number) { |i| product *= i }
#    return product
#end

def factorial(number)
    if number == 0
        return 1
    else
      i = 1
      product = 1
      while i <= number
         product = product * i
         i += 1
      end
    end
    return product
end