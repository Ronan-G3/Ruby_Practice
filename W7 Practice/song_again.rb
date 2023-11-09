class Song
  include Comparable
  attr_accessor :name, :album, :artist, :time

  def initialize(name, album, artist, time)
    @name = name
    @album = album
    @artist = artist
    @time = time
  end

    def <=>(song2)
      self.time <=> song2.time
    end
  def to_s
    puts "<< #{@name} >> by #{@artist} in their album #{@album}. \n"
  end
end

foo = Song.new("Bring in the clowns","Krustys greatest", "Krusty", 4.3)
bar1 = Song.new("Bring in the clowns","Krustys greatest", "Krusty", 4.3)
bar2 = Song.new("Bring in the clowns","Liza's greatest", "Minelli", 4)

p foo == foo    # True
p foo == bar1   # False - Different instances of two objects of the same attributes
                # WITH Include comparable, and method it returns true
# p foo <=> bar1  # Nil
# p bar2 < bar1   # Undefined method!
p bar2 <=> foo  # -1
p foo <=> bar1  # 0
p foo <=> bar2  # 1
p bar2 < bar1   # true    # Only comparing the runtime values
p bar2 > bar1   # false    # 4.3 is greater than 4
