class BoatingTest
    attr_accessor :test_name, :test_status
    attr_reader :student, :instructor
    @@all = []

    def initialize(student, test_name, test_status, instructor)
        @student = student
        @test_name = test_name
        @test_status = test_status
        @instructor = instructor
        save
    end

    def save
        @@all << self
    end

    def self.all 
        @@all
    end
end
