# I worked on this challenge [with: Megan Swanby ].
# This challenge took me [1.5] hours.
#
# As a video game player, I want to be able to create a new car and set its model and color so I can customize it in the video game.
# As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.
# As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.
# As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.
# As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.
# As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.
# As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.
# As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.
# What are the characteristics associated with the car? These are your attributes. What are the actions associated with your car? These are your methods.

# 2. Pseudocode

# Create a class called car
#   initialize characteristics of the car- model, color,

# Create a way to define the distance to drive with the car
#   that gives directions to the pizza delivery location.


# Create a way to print out the speed of car when called.

# Create a way to turn that accepts user input and moves the car left or right
#   When input is left,
#     the car moves left
#   when input is right,
#     car moves right

# Create a way to change speed that accepts a number and returns that number as the new speed
#   if user input does not match the speed,
#     replace the speed with the new input
#   Else return speed.

# Create a way to track milage
#   make an empty array that tracks the distance a car has driven  (think it'll link to distance method)

# Create a way to stop the car.
# If car is moving,
#   replace speed with 0

# Print list of actions when game ends.


# 3. Initial Solution

class Car

  def initialize(model, color)
    @model = model
    @color = color
    @speed = 0
    @miles = 0
    @pizzas = []
    p "You are driving a #{@color} #{@model}."
  end

  def drive(num)
    @distance = num
    @miles += @distance
    p "You have #{@distance} miles to go!"
  end

  def speed
    p "You're going #{@speed} miles an hour."
  end

  def turn(direction)
    if direction == "left"
      p "You turned left"
    else direction == "right"
      p "You turned right"
    end
  end

    def change_speed(int)
      @speed = int
      p "Your new speed is #{@speed} miles per hour."
    end

    def mileage
      p "You have traveled #{@miles} miles."
    end

    def stop_car
      if @speed > 0
        @speed = 0
        p "You are going #{@speed}. You stopped."
      end
    end

    def end_game
      p "You traveled #{@miles} in this game."
    end

    def add_pizza(flavor)
      @pizzas << flavor
      p "You have the following pizzas in your car:"
      puts @pizzas
    end

    def delivery
      p "You just delivered the #{@pizzas[0]} pizza."
      @pizzas.shift
    end
end


class Pizza

  def initialize(size, toppings)
    @size= size
    @toppings = toppings
  end

  def pizza_type(choice)
    @choice = choice
    if @choice.includes?('gluten-free', 'white', 'grandma')
    end
  end

  def quantity(num)
    @pizza_num = num
    p "You ordered #{@pizza_num} pizzas"
  end

  def description
    p "Your #{@pizza_num} #{@size} #{@toppings} pizza will be delivered shortly."
  end

  def orders
    if @toppings.length > 2
      last_topping = @toppings.pop
      @order = "#{@size} #{@toppings.join(", ")}, & #{last_topping} pizza."
    elsif @toppings.length == 2
      @order = "#{@size} #{@toppings.join(" & ")} pizza."
    else
      @order = "#{@size} #{@toppings.join("")} pizza."
    end
  end
end


# 4. Refactored Solution

class Car

  def initialize(model, color)
    @model = model
    @color = color
    @speed = 0
    @miles = 0
    @pizza_storer = []
    p "You are driving a #{@color} #{@model}."
  end

  def drive(num)
    @distance = num
    @miles += @distance
    p "You have #{@distance} miles to go!"
  end

  def speed
    p "You're going #{@speed} miles an hour."
  end

  def turn(direction)
    if direction == "left"
      p "You turned left"
    else direction == "right"
      p "You turned right"
    end
  end

    def change_speed(int)
      @speed = int
      p "Your new speed is #{@speed} miles per hour."
    end

    def mileage
      p "You have traveled #{@miles} miles."
    end

    def stop_car
      if @speed > 0
        @speed = 0
        p "You are going #{@speed}. You stopped."
      end
    end

    def end_game
      p "You traveled #{@miles} in this game."
    end

    def add_pizza(flavor)
      @pizza_storer << flavor
      p "You have the following pizzas in your car:"
      puts @pizza_storer
    end

    def delivery
      p "You just delivered the #{@pizza_storer[0]} pizza."
      @pizza_storer.shift
    end
end


class Pizza

  def initialize(quantity, size, toppings)
    @size= size
    @toppings = toppings
    @pizza_num = quantity
  end

  def description
    p "Your #{@pizza_num} #{@size} large pizzas with #{@toppings.join("'")} toppings will be delivered shortly."
  end

  def orders
    if @toppings.length > 2
      last_topping = @toppings.pop
      @order = "#{@size} #{@toppings.join(", ")}, & #{last_topping} pizza."
    elsif @toppings.length == 2
      @order = "#{@size} #{@toppings.join(" & ")} pizza."
    else
      @order = "#{@size} #{@toppings.join("")} pizza."
    end
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE
# Create a new car of your desired model and type
Tesla = Car.new("Telsa", "Silver")
# Drive .25 miles (speed limit is 25 mph)
Tesla.drive(0.25)
Tesla.change_speed(25)
# At the stop sign, turn right
Tesla.stop_car
Tesla.turn("right")
# Drive 1.5 miles (speed limit is 35 mph)
Tesla.drive(1.5)
Tesla.change_speed(35)
# At the school zone, check your speed
Tesla.speed
# Slow down to speed limit 15 mph
Tesla.change_speed(15)
# Drive .25 miles more miles
Tesla.drive(0.25)
# At the stop sign, turn left
Tesla.stop_car
Tesla.turn("left")
# Drive 1.4 miles (speed limit is 35 mph)
Tesla.drive(1.4)
Tesla.change_speed(35)
# Stop at your destination
Tesla.stop_car
# Log your total distance travelled
Tesla.mileage
phil = Pizza.new("large", ["peperoni","sasauge", "spinach"])
phils_order = phil.orders
mike = Pizza.new("large", ["peperoni","sasauge"])
mikes_order = mike.orders
Tesla.add_pizza(mikes_order)
eric = Pizza.new("large", ["peperoni"])
erics_order = eric.orders
Tesla.add_pizza(erics_order)
Tesla.add_pizza(phils_order)
Tesla.add_pizza("peperoni")
Tesla.add_pizza("cheese")
Tesla.add_pizza("sasauge")
Tesla.delivery
Tesla.delivery

#Reflection
#What concepts did you review in this challenge?
# We reviewed creating classes, creating methods within those classes, using instance and local variables, calling a class, creating instances of classes, and having classes interact with each other. We also worked with arrays adding items to them and removing items, as well as string interpolation.

# What is still confusing to you about Ruby?
# I think it's more of what I don't know that I don't know, but I feel pretty comfortable with the concepts convered in this activity. Might need more practice with classes and object oriented programming, reviewing the scope of class and global variables. I also want to review attr.

# What are you going to study to get more prepared for Phase 1?
# I plan to do the additional ruby challenges that I didn't do during the pairing challenges to better understand where I need more practice.