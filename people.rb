class Student
  attr_accessor :name
  def learn
    puts "I get it!"
  end
  def name(name)
    @name = name
    puts "Hi my name is #{name}"
  end
end

class Instructor
  attr_accessor :name
  def teach
    puts "Everything in Ruby is an Object"
  end
  def name(name)
    @name = name
    puts "Hi my name is #{name}"
  end
end

chris = Instructor.new
puts chris.name("Chris")
cristina = Student.new
puts cristina.name("Cristina")
puts chris.teach
puts cristina.learn
# puts student.teach   teach is a method in Instructor. Not defined in Student and cannot be accessed by Student
