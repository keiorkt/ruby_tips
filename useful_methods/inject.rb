
numbers = [4, 3, 9, 8, 5, 6, 1, 7, 2]
p numbers.inject { |sum, n| sum + n }
p numbers.inject(100) { |diff, n| diff - n }

scores = { 'Carol' => 90, 'Alice' => 50, 'David' => 40, 'Bob' => 60 }
names = scores.inject([]) do |arr, (key, val)|
  arr << key if val >= 60
  arr
end
p names.sort

numbers = [4, 3, 9, 8, 5, 6, 1, 7, 2]
puts numbers.inject(:+)
puts numbers.inject(100, :-)

