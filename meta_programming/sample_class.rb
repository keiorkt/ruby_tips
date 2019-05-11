
class Hoge
  define_method :say do |name|
    puts "hello, #{name}"
  end
end

hoge = Hoge.new
hoge.public_send('say'.to_sym, 'Keita')

