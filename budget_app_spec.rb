require "pry"
# Relative path to budget application
require_relative("./budget_app.rb")
#Foo class example 
class Foo
    # Class method example
    def self.speak
    end

    # Instance method example speak2 see below
    def speak2
        puts "Goodbye world"
    end
end

# RSpec unit Behavioral Driven Design (BDD) testing for budget application using the describe method
RSpec.describe "BudgetApp" do
    describe "#start" do
        it "displays the welcome message" do
            allow(Kernel).to receive(:puts)

            Application.new.start

            expect(Kernel).to have_received(:puts).with("Welcome to budget app")
        end
    end
#show_menu test menu method
    describe "#show_menu" do
        it "displays menu" do
            
        end
    end
#foo method
    describe "Foo" do
        #speak method example comment
        describe ".speak" do
            it "speaks" do
                allow(Foo).to receive(:speak2).and_call_original
                allow(Kernel).to receive(:puts).and_call_original

                #Class method speak
                Foo.speak

                # speak2 method comment
                Foo.new.speak2
                #This is a unit test which indiccates it has recieved the speak method
                expect(Foo).to have_received(:speak2)
                #Once received it prints "Hello, world!" text
                expect(Kernel).to have_received(:puts).with("Hello, world!")
            end
        end
    end
end