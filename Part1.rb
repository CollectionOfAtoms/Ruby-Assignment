# Part1: Hello World
class HelloWorldClass          #Creates a new class called HelloWorldClass
    def initialize(name)       #Creates a new method called initialize that ruby will
                               # automatically run.
       @name = name.capitalize # Capitalize the first letter of the name instance variable
    end
    def sayHi                  # Create new method named sayHi
        puts "Hello #{@name}!" 
    end
end
hello = HelloWorldClass.new("Buttface") #Creates new instance of HelloWorldClass initialized with 
                                        #@name = Buttface
hello.sayHi
