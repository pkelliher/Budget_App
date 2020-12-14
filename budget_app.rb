puts "Welcome to budget app V0.1"

# Seperate, space seperated, debt amounts:
puts "Type in your two debt amounts seperated by a space"

debt_amounts = gets.chomp

debt1, debt2 = debt_amounts.split

puts "Thank you, based on your entries, your first amount due is $#{debt1} and your second debt amount is $#{debt2}.
Your total debt amount is $#{debt1.to_i + debt2.to_i}."

#Go over with David the best method for counting entries in a string similar to what is outlined in 
#this Stack Overflow article https://stackoverflow.com/questions/1416059/best-way-to-count-words-in-a-string-in-ruby 

# Enter debt amount (in dollars)
puts "Type in your total debt amount?"

total_debt = gets.chomp

puts "Thank you, I can see your total debt is $#{total_debt}."

# Enter income amount (in dollars/month)
puts "Type in your monthly total income?"

total_monthly_income = gets.chomp

puts "Thank you, I can see your total monthly income is $#{total_monthly_income}."

# How many months does it take to pay off the debt?

puts "The total time it will take for you to pay off your debt is #{total_debt.to_i / total_monthly_income.to_i} months."

# Create option box for debt entries and amount owed within the CLI.


