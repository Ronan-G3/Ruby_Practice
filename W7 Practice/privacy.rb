class Testo
  def initialize
    @foo = "heeeee"
  end

  def santa
    p @foo + " Hooooo, " + snooty
    p self.wicked_elf
  end

  def wicked_elf
    @foo + @foo + @foo
  end

  def snooty
    "I do not laugh."
  end

  public :santa   # Would have been public by default
  protected :wicked_elf   # Now protected privacy level, throws error now
  private :snooty  # Snooty is now private, also now throws an error
end

test = Testo.new

#test.initialize # Will throw an error as the initialize method is private

p test.santa
puts "*************"
test.wicked_elf