class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age, :parent_permission

  def can_use_service?
    @age >= 18 && @parent_permission == 'true'
  end

  private

  def of_age?
    @age >= 18
  end
end
