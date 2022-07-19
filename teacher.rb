require './person'

class Teacher < Person
  def initialize(name, age, parent_permission, specialisation)
    super(name, age, parent_permission)
    @specialisation = specialisation
  end

  def can_use_service?
    true
  end
end
