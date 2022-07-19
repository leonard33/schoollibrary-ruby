require './person'

class Teacher < Person
  def initialize(age, specialisation, name = 'Unknown', parent_permission: true)
    super(name, age, parent_permission)
    @specialisation = specialisation
  end

  def can_use_service?
    true
  end
end
