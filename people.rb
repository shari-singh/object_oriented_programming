class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def greeting
    puts "Hi my name is #{name}"
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end

chris = Instructor.new("Chris")
cristina = Student.new("Cristina")
puts chris.name
puts cristina.name
puts chris.teach
puts cristina.learn
# puts student.teach   teach is a method in Instructor. Not defined in Student and cannot be accessed by
