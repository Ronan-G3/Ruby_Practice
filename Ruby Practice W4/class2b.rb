class Visit         # concider a class for printing names and changing them!
  attr_accessor :place, :person

  def initialize(pl, per)
    @place = pl
    @person = per
  end
  def print_visit               # a class for recording visits!
    puts "#{@person} visited #{@place}"   # Hash and squiggly bracket substitutes the value of the string
  end
end
