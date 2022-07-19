class Person
    def initialize(name="unknown", age, parent_permission="true")
        @id = id
        @name = name
        @age = age
    end
    def get_id
       return @id
    end
    def get_name
      return  @name
    end
    def get_age
       return @age
    end
    def set_name(name)
        @name = name
    end
    def set_age(age)
        @age = age
    end
    def can_use_service?
        @age >= 18 && @parent_permission == "true"
    end
     private
     def is_of_age?
        @age >= 18
    end
end