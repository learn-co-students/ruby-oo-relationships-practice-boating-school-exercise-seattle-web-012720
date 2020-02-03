class Student
  attr_reader :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(name)
    self.all.find { |student| student.first_name == name }
  end

  def tests_taken
    BoatingTest.all.select { |test| test.student == self }
  end

  def tests_passed
    self.tests_taken.select { |test| test.test_status == "passed" }
  end

  def grade_percentage
    grade = (self.tests_passed.length).to_f / (self.tests_taken.length).to_f * 100
  end
end
