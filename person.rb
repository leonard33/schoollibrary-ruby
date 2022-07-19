class Person
  def initialize(name, age, _parent_permission = 'true')
    @id = id
    @name = name
    @age = age
  end

  def gets_id
    @id
  end

  def gets_name
    @name
  end

  def gets_age
    @age
  end

  def sets_name(name)
    @name = name
  end

  def sets_age(age)
    @age = age
  end

  def can_use_service?
    @age >= 18 && @parent_permission == 'true'
  end

  private

  def of_age?
    @age >= 18
  end
end
