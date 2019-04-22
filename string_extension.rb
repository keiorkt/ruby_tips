# How to implement `blank?` method

class String
  unless method_defined? :blank?
   def blank?
     empty? || strip.empty?
   end
  end
end

