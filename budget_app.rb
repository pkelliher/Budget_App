puts "Welcome to budget app V0.1"

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