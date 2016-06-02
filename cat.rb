class Cat
attr_reader :name, :preferred_food, :meal_time
  def initialize (name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time.to_i
  end

  def eats_at
    if @meal_time > 23
      puts "Error"
    elsif @meal_time > 13
      "#{meal_time - 12} AM"
    else
      "#{meal_time} PM"
    end
  end

  def meow
    "My name is #{name} and I eat tuna at #{eats_at}"
  end
end

mozzie = Cat.new("Mozzie", "turkey", "15")
flint = Cat.new("Flint", "chicken", "9")

puts mozzie.meow
puts flint.meow
