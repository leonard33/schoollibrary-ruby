require_relative './student'
require_relative './rental'
require_relative './person'

class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(person, date)
    Student.new(date, self, person)
  end
end
