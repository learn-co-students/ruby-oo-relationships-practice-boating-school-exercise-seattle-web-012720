class Instructor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    if BoatingTest.all.any? { |test| test.student == student && test.test_name == test_name }
      x = BoatingTest.all.find { |test| test.student == student && test.test_name == test_name }
      x.test_status = ("passed")
      x
    else
      BoatingTest.new(student, test_name, "passed", self)
    end
  end

  def fail_student(student, test_name)
    if BoatingTest.all.any? { |test| test.student == student && test.test_name == test_name }
      x = BoatingTest.all.find { |test| test.student == student && test.test_name == test_name }
      x.test_status = ("failed")
      x
    else
      BoatingTest.new(student, test_name, "failed", self)
    end
  end
end
