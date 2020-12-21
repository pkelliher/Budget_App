puts "Welcome to budget app V0.1"

# Promt to the user to enter in credit card debt amount.
puts "Please enter credit card debt amounts, when finished, please type END (upper case)."

# user_input stores the credit card debt amounts. input_arr builds the array with the user_input elements.
user_input = ""
input_arr = []

# Building while loop.
while user_input != "END"  do
    # Print's the prompt
    puts "Please enter next amount here:"

    # Receives the user's input and stores it in the user_input variable
    user_input = gets.chomp

    # If user types END the while loop is broken.
    if user_input != "END"
    input_arr << user_input.to_i
    end
end

# This is storing the sum of all elements in the input_arr in a variable called total_cc_debt.
total_cc_debt = input_arr.sum

# This displays the total credit card debt to the user.
puts "Thank you for entering in your credit card debt, based on your entries your 
total credit card debt is: $#{total_cc_debt}."

# Prompts the user to enter income amount (in dollars/month)
puts "Now please type in your total monthly income?"

# total_monthly_income stores the user monthly income amount. 
total_monthly_income = gets.chomp

# Prints the total income back to the user.
puts "Thank you, I can see your total monthly income is $#{total_monthly_income}."

# How many months does it take to pay off the credit card debt?
puts "The total time it will take for you to pay off your credit card debt is 
#{total_cc_debt.to_i / total_monthly_income.to_i} months."