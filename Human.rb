# Human class
class Human
    # initializing methods with name and age arguments
    def initialize(name, age)
        @name = name
        @age = age
    end

    #brushteeth method
    def brushteeth
        puts "#{@name} please make sure to brush your teeth for at least 3 mintues."
    end
    
    def eat_breakfast
        puts "#{@name} had bacon and eggs for breakfast."
    end

    def introduce_self
        puts "Hello my name is #{@name}, and my age is #{@age}."
    end
end

#Human class with new method and method arguments name and age.
patrick = Human.new("Patrick", 44)
david = Human.new("David", 40)

patrick.introduce_self

david.introduce_self

david.brushteeth

patrick.brushteeth

david.eat_breakfast

patrick.eat_breakfast





