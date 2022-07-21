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
end
