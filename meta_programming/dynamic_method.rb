
class Book
  def initialize(name, author)
    @name = name
  end

  def self.define_component(name)
    define_method(name) do
      @name + " is splendid!"
    end
  end
end

wilde = Book.new("the picture of dorian gray", "wilde")
shake = Book.new("hamlet")

Book.define_component(:the_picture_of_drian_gray)
Book.define_component(:hamlet)

puts wilde.the_picture_of_drian_gray
puts shake.hamlet

