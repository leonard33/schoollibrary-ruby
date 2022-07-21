require_relative './person'
require_relative './student'

class Book
  attr_accessor :title, :author
  attr_reader :rental, :person

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def add_rental(rents)
    @rental.push(rents)
    rents.book = self
  end
end
