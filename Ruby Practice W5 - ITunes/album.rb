class Album
  attr_accessor :name, :tracks, :length, :artist, :id

  def initialize(name, tracks, length, artist, owners)
    @name = name
    @tracks = tracks
    @length = length
    @artist = artist
    @owners = owners
    @id = name.object_id
  end
  #String method
  def to_s
    puts "The Album #{@name} by #{@artist}. \n"
  end
  # Is an album method
  def isa?
    instance_of?(Album)
  end

  # Class methods
  def self.make_album(name, tracks, length, artist, owners)
    Album.new(name, tracks, length, artist, owners)
  end

  def self.build_all(albums = [])
    ...
  end

  def self.build_an_album_called(album_name)
    ...
  end
end