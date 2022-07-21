require_relative './book'
require_relative './person'

class Rental
  attr_accessor :book, :person
  attr_reader :author, :date

  def initialize(date, book, person)
    @date = date
    @book = book
    book.rental << self
    @person = person
    person.rental << self
  end
end
