class Instructor
    attr_reader :name

    @@all = [ ]

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        found_test = BoatingTest.all.select {|tests| tests.test_name == test_name && tests.student == student}
        if found_test
            found_test[0].test_status = 'passed'
            return found_test
        else 
            new_test = BoatingTest.new(student, test_name, self)
            new_test.test_status = 'passed'
            return new_test
        end
    end

    def fail_student(student, test_name)
        found_test = BoatingTest.all.select {|tests| tests.test_name == test_name && tests.student == student}
        if found_test
            found_test[0].test_status = 'failed'
            return found_test
        else 
            new_test = BoatingTest.new(student, test_name, self)
            new_test.test_status = 'failed'
            return new_test
        end
    end
end
