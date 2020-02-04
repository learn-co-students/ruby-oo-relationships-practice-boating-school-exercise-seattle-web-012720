require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#SEED DATA
  #students
    bob = Student.new("Spongebob")
    patrick = Student.new("Patrick")

  #teachers
    puff = Instructor.new("Ms. Puff")
    krabs = Instructor.new("Mr. Krabs")

  #pending tests for pass_student/fail_student
  test1 = patrick.add_boating_test("test1", puff)
  test2 = patrick.add_boating_test("test2", puff)
  test3 = patrick.add_boating_test("test3", krabs)
  test4 = patrick.add_boating_test("test4", puff)
  test5 = patrick.add_boating_test("test5", krabs)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line