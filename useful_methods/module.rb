
module A
  def self.includeed(base)
    puts self.name
  end
end

module B
  def self.included(base)
    puts self.name
  end
end

module C
  def self.included(base)
    puts self.name
  end
end

module D
  include A, B, C
end

# C B A
