require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

Will = Student.new("Will")
Lyra = Student.new("Lyra")
Pan = Student.new("Pan")

Captain = Instructor.new("Captain")
Hook = Instructor.new("Hook")
Smee = Instructor.new("Smee")

a = BoatingTest.new(Will, "basic", Smee)
b = BoatingTest.new(Lyra, "basic", "failed", Hook)
c = BoatingTest.new(Lyra, "intermediate", Captain)

d = Hook.pass_student(Will, "advanced")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
