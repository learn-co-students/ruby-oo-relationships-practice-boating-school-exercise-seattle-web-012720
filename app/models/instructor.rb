class Instructor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def pass_student(student, test_name)
        test_that_passed = BoatingTest.all.find do |btest| 
            if btest.student == student && btest.test_name == test_name
                btest.test_status = "passed"
            else
                new_test = BoatingTest.new(student, test_name, "passed", self)
                new_test.test_status = "passed"
                return new_test
            end
        end
        test_that_passed
    end

    def fail_student(student, test_name)
        test_that_failed = BoatingTest.all.find do |btest| 
            if btest.student == student && btest.test_name == test_name
                btest.test_status = "failed"
            else
                new_test = BoatingTest.new(student, test_name, "failed", self)
                new_test.test_status = "failed"
                return new_test
            end
        end
        test_that_failed
    end

    def save
        @@all << self
    end

    def self.all 
        @@all
    end
end
