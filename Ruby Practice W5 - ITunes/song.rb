class Song
  attr_accessor :name, :album, :artist, :time, :owners, :id

  def initialize(name, album, artist, time, owners, id)
    @name = name
    @album = album
    @artist = artist
    @time = time
    @owners = owners
    @id = id
  end

  #Print method
  def to_s
    puts "<< #{@name} >> by #{@artist} in their album #{@album} is owned by #{@owners}. \n"
  end
  # Predicate method
  def isa?
    instance_of?(song)
  end
  # Method that plays the song
  def play_song
    no = rand(10)
    no.times {print "#{@name} do be do ..."}
    puts "\n"
    end
end