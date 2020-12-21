puts "Welcome to budget app V0.1"

# Seperate, space seperated, debt amounts:

puts "Please enter credit card debt amounts, when finished, please type END (upper case)."

user_input = ""
input_arr = []

while user_input != "END"  do
    # Print's the prompt
    puts "Please enter next amount here:"

    # Receives the user's input and stores it in the user_input variable
    user_input = gets.chomp

    if user_input != "END"
    input_arr << user_input
end

    # unless user_input == "END"
    #     input_arr << user_input
    # end

    # input_arr << user_input if user_input != "END"

    # if user_input != "END"
    #     input_arr << user_input
    # end

    # if user_input == "END"
    # else
    #     input_arr << user_input
    # end
end

puts input_arr.to_s 


puts "Thank you for typing in your entries, your total credit card debt is:"

# Multiple selection in CLI see: https://medium.com/@reireynoso/tty-prompt-select-for-handling-user-inputs-aed13f46c8bc
# puts "Hello"