require "pry"
# Relative path to budget app
require_relative("./budget_app.rb")
#Foo class example 
class Foo
    # Class method example
    def self.speak
    end

    # Instance method example speak2
    def speak2
        puts "Goodbye world"
    end
end

# RSpec unit BDD testing for budget application
RSpec.describe "BudgetApp" do
    describe "#start" do
        it "displays the welcome message" do
            allow(Kernel).to receive(:puts)

            Application.new.start

            expect(Kernel).to have_received(:puts).with("Welcome to budget app")
        end
    end
#show_menu application test menu
    describe "#show_menu" do
        it "displays menu" do
            
        end
    end

    describe "Foo" do
        describe ".speak" do
            it "speaks" do
                allow(Foo).to receive(:speak2).and_call_original
                allow(Kernel).to receive(:puts).and_call_original

                #Class method
                Foo.speak

                Foo.new.speak2
                #This is a unit test which indiccates it has recived speak
                expect(Foo).to have_received(:speak2)
                #Once received it prints "Hellow, world!"
                expect(Kernel).to have_received(:puts).with("Hello, world!")
            end
        end
    end
end