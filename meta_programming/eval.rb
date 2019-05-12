
class InstanceEvalSample
  def initialize
    @name = 'hoge'
  end
end

e = InstanceEvalSample.new
p e.instance_eval { @name }


################################
# class_eval
################################

class ClassEvalSample; end

ClassEvalSample.class_eval do
  def hello; 'hello everyone!'; end
end

puts ClassEvalSample.new.hello

################################
# class_eval
################################

class ClassEvalSample; end
ClassEvalSample.module_eval { def hello_2; 'hello from module eval!'; end }

puts ClassEvalSample.new.hello_2

