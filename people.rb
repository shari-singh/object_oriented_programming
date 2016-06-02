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

student = Student.new
teacher = Instructor.new

puts teacher.name("Mr. Keating")
puts teacher.teach
puts student.name("Todd")
puts student.learn
