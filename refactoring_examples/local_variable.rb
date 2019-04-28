
def print_owing(previous_amount)
  print_banner
  outstanding = calculate_outstanding(previous_amount * 1.2)
  print_details(outstanding)
end

def print_banner
  puts "***********************"
  puts "**** Customer Owes ****"
  puts "***********************"
end

def print_details(outstanding)
  puts "name: #{@name}"
  puts "amount: #{outstanding}"
end

def calculate_outstanding(initial_value)
  #outstanding = 0.0
  #@orders.each do |order|
  #  outstanding += order.amount
  #end
  #outstanding

  @orders.inject(initial_value) { |result, order| result + order.amount }
end

