class Printer
  def initialize(paper_size)
    @paper_size = paper_size
    @paper_size.methods.grep(/^get_info_(.*)$/) {
      Printer.print_ps($1)
    }
  end

  def self.print_ps(paper_size)
    define_method "print_#{paper_size}" do
      puts @paper_size.send("get_info_#{paper_size}")
    end
  end
end

class PaperSize
  def get_info_A4
    return 'This is A4'
  end

  def get_info_B4
    return 'This is B4'
  end

  def get_info_C5
    return 'This is C5'
  end
end

ps = PaperSize.new
printer = Printer.new(ps)

printer.print_A4
printer.print_C5

