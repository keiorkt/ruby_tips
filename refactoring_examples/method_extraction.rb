
# コードの断片をメソッドにして、その目的を説明する名前をつける。

# before
def print_owing(amount)
  print_banner
  puts "name: #{@name}"
  puts "amount: #{@amount}"
end

# after
def print_owing(amount)
  print_banner
  print_details(amount)
end

def print_details(amount)
  puts "name: #{@name}"
  puts "amount: #{@amount}"
end

