require_relative 'namable'
require_relative 'decorator'

class Person < Namable
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age, :parent_permission

  def can_use_service?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
capitalized_person.correct_name
capitalized_trimmedperson = TrimmerDecorator.new(capitalized_person)
capitalized_trimmedperson.correct_name
