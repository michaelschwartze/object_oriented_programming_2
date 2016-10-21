class Person

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{ @name }."
  end

end

class Student < Person

  def learn
    "I get it!"
  end

end

class Instructor < Person

  def teach
    "Everything in Ruby is an object."
  end

end

ch = Instructor.new("Chris")
cr = Student.new("Christina")

puts ch.greeting
puts cr.greeting
puts ch.teach
puts cr.learn
