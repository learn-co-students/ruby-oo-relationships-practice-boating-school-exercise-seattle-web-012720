class Student
    attr_accessor :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        save
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def grade_percentage
        list_of_tests = BoatingTest.all.select {|btest| btest.student == self}.map{|btest| btest.test_status}
        puts "=" * 20
        pp list_of_tests
        puts "=" * 20
        
        fails = list_of_tests.count("failed")
        puts "+" * 20
        pp fails
        puts "=" * 20
        grade = fails.to_f / list_of_tests.length.to_f
        grade * 100
    end

    def self.find_student(name)
        @@all.find do |student| 
            if student.first_name == name
                student
            end
        end
    end

    def save
        @@all << self
    end

    def self.all 
        @@all
    end
end
