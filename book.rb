require_relative './person'
require_relative './student'
require_relative './rental'

class Book
  attr_accessor :title, :author
  attr_reader :rental, :person

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def add_rental(person, date)
    Rental.new(date, self, person)
  end
end
