require 'json'

names = %w{fred jess john}
ages = [38, 46, 32]

p names.zip(ages)
p h = names.zip(ages).to_h

jj h

