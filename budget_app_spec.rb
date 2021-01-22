require "pry"
require_relative("./budget_app.rb")

class Foo
    # Class method
    def self.speak
    end

    # Instance method
    def speak2
        puts "Goodbye world"
    end
end

RSpec.describe "BudgetApp" do
    describe "#start" do
        it "displays the welcome message" do
            allow(Kernel).to receive(:puts)

            Application.new.start

            expect(Kernel).to have_received(:puts).with("Welcome to budget app")
        end
    end

    describe "#show_menu" do
        it "displays menu" do
            
        end
    end

    describe "Foo" do
        describe ".speak" do
            it "speaks" do
                allow(Foo).to receive(:speak2).and_call_original
                allow(Kernel).to receive(:puts).and_call_original

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