# puts "Welcome to budget app V0.1"

# # Promt to the user to enter in credit card debt amount.
# puts "Please enter credit card debt amount, when finished, please type END (upper case)."

# # user_input stores the credit card debt amounts. input_arr builds the array with the user_input elements.
# user_input = ""
# input_arr = []

# # Building while loop.
# while user_input != "END"  do
#     # Print's the prompt
#     puts "Please enter next amount here:"

#     # Receives the user's input and stores it in the user_input variable
#     user_input = gets.chomp

#     # If user types END the while loop is broken. Can add percision when Rails app is created, to_f.
#     if user_input != "END"
#     input_arr << user_input.to_f
#     end
# end

# # This is storing the sum of all elements in the input_arr in a variable called total_cc_debt.
# total_cc_debt = input_arr.sum

# # This displays the total credit card debt to the user.
# puts "Thank you for entering in your credit card debt, based on your entries your
# total credit card debt is: $#{total_cc_debt}."

# # Prompts the user to enter income amount (in dollars/month)
# puts "Now please type in your total monthly income?"

# # total_monthly_income stores the user monthly income amount.
# total_monthly_income = gets.chomp

# # Prints the total income back to the user.
# puts "Thank you, I can see your total monthly income is $#{total_monthly_income}."

# # How many months does it take to pay off the credit card debt?
# puts "The total time it will take for you to pay off your credit card debt is
# #{total_cc_debt.to_f / total_monthly_income.to_f} months."

class Application
  def initialize
    @total_cc_debt = 0.0
    @total_monthly_income = 0.0
  end

  def start
    Kernel.puts "Welcome to budget app"
  end

  def show_menu
    # puts "Please make a selection..."
    # puts "1. Enter debt"
    # puts "2. Enter income"
    # puts "3. Total repayment timeline."

    # menu_choice = gets.chomp

    # if menu_choice == "1"
    #   enter_debt
    # elsif menu_choice == "2"
    #   enter_income
    # elsif menu_choice == "3"
    #   debt_calculation
    # else
    #   puts "That was not a valid option, please make a valid selection, (1, 2 or 3)."
    #   show_menu
    # end
  end

  def enter_debt
    puts "Please enter debt amounts here."
    #user_input stores the credit card debt amounts. input_arr builds the array with the user_input elements.
    user_input = ""
    input_arr = []

    # Building while loop. And will only break the loop once they user types the string "END".
    while user_input != "END"
      # Print's the prompt for user to continue to enter in amounts.
      puts("Please enter next amount here:")

      # Receives the user's input and stores it in the user_input variable, chomp removes /n carriage return from the end of string.
      user_input = gets.chomp

      # Can add percision when Rails app is created, to_f (float, decimal).
      if user_input != "END"
        input_arr << user_input.to_f
      end
    end
    # This is storing the sum of all elements (amounts) in the input_arr (input array) in a variable called total_cc_debt (Total credit card debt).
    @total_cc_debt = input_arr.sum

    # This displays the user's total credit card debt amount.
    puts "Thank you for entering in your credit card debt, based on your entries your total credit card debt is: $#{@total_cc_debt}."
    show_menu
  end



  def enter_income
    # Displays the the text below where a user can enter in multiple income amounts.
    puts "Please enter income amounts here."

    # Prompts the user to enter total monthly income amount (in dollars/month)
    puts "Now please type in your total monthly income?"

    # The total_monthly_income instance variable stores the total user monthly income amount the adds chomp to remove the carriage return.
    @total_monthly_income = gets.chomp

    # Prints the total income back to the user.
    puts "Thank you, I can see your total monthly income is $#{@total_monthly_income}."
    show_menu
  end

  def debt_calculation
    # How many total months does it take to pay off the credit card debt? Truncate 2 limits the float value to 2 digits.
    puts "The total time it will take for you to pay off your credit card debt is
#{(@total_cc_debt.to_f / @total_monthly_income.to_f).truncate(2)} months."
  end
end

# error handling to ensure there are not zero values for both total_cc_debt and total_monthly_income.

# Application.new.start