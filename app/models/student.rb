class Student
    attr_reader :first_name

    @@all = [ ]

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, instructor)
        BoatingTest.new(self, test_name, instructor)
    end

    def self.find_student(first_name)
        Student.all.first {|student| student.first_name == first_name}
    end

    def grade_percentage
        #create an empty array to store tests with status passed.
        #iterate through all tests to find passed tests.
        #Return that there are no passed tests to avoid division by 0 error.
        # Devide 
        passed_tests = [ ]
        array =  BoatingTest.all.select {|tests| tests.student == self}
        array.each do |tests|
            if tests.test_status == 'passed'
                passed_tests << tests
            end
        end
        if array.length == 0 || passed_tests.length == 0
            return "There are 0 passed tests.."
        end
        num = array.length.to_f / passed_tests.length.to_f
        num
    end
end
