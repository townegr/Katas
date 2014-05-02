require 'pry'

class Student
	attr_reader	:first_name
	attr_reader :last_name
	attr_reader	:grades
  
  def initialize(first_name, last_name, grades = [])
    @first_name = first_name
    @last_name = last_name
    @grades = grades
    @average = average
  end

  def grade_average
		@average = @grades.inject { |grade, i| grade + i }/@grades.size
  end

  def letter_grade
    binding.pry
  	if @average >= 93
  		'A'
  	elsif @average > 87 && @average <= 92
  		'B'
  	elsif @average > 80 && @average <= 86
  		'C'
  	elsif @average > 70 && @average <= 79
  		'D'
  	else
  		'F'
  	end
  end

  def passed?
  	@average >= 70
  end

  def to_s
  	"#{@first_name} #{last_name}, (#{grade_average}) #{letter_grade}"
  end
end

# student = Student.new('Lindsay', 'Weir', [95, 100, 92, 83])
# # binding.pry
# # puts student.grade_average
# # puts student.letter_grade
# # puts student.passed?
# # puts "#{student.first_name}, #{student.last_name}"
# puts student