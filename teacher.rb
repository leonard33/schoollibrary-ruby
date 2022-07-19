require './person.rb'

class Teacher < Person
    def initialize(name="unknown", age, parent_permission="true", specialisation)
       super(name, age, parent_permission)
       @specialisation = specialisation
    end
        def can_use_service?
            return true
        end
end