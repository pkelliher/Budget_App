# Human class
class Human
    # initializing method with name and age arguments
    def initialize(name, age)
        @name = name
        @age = age
    end

    # brushteeth class method
    def brushteeth
        puts "#{@name} please make sure to brush your teeth for at least 3 mintues."
    end
    
    # eat_breakfast class method with name insance var
    def eat_breakfast
        puts "#{@name} had bacon and eggs for breakfast."
    end
    # introduce class method with instance variales
    def introduce_self
        puts "Hello my name is #{@name}, and my age is #{@age}."
    end
end

#Human class with new method for Human class with arguments containing name and age.
patrick = Human.new("Patrick", 44)
david = Human.new("David", 40)

patrick.introduce_self

david.introduce_self

david.brushteeth

patrick.brushteeth

david.eat_breakfast

patrick.eat_breakfast





