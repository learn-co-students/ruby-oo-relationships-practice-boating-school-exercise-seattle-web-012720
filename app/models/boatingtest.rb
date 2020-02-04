class BoatingTest
    attr_accessor :test_status
    attr_reader :student, :instructor, :test_name
    @@all = [ ]

    def initialize(student, test_name, instructor)
        @student = student
        @test_status = "pending"
        @test_name = test_name
        @instructor = instructor
        @@all << self
    end

    def self.all
        @@all
    end

    # def test_status=(test_status)
    #     @test_status = test_status
    # end
end
