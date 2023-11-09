  # Main top level file in the structure
  require 'csv'
  require_relative 'actor'
  require_relative 'album'
  require_relative 'library'
  require_relative 'song'
  require_relative 'reader'
  require_relative 'utilities'
  require_relative 'error'
  require_relative 'predicate'
  require_relative 'data'

  #songs_file = ARGV[0]       #for command line
  #owners_file = ARG[1]       #for command line (would be used instead of the bottom line)
  reader = Reader.new
  data = Databit.new()
  songs_file = 'songs.csv'      #in RubyMine
  owners_file = 'owners.csv'   #in RubyMine

  puts "\nProcessing Songs from file: #{songs_file}"
  data.hashes = reader.read_in_the_songs(songs_file)

  puts "Processing Ownership from file: #{owners_file}"
  data.actors = Actor.build_all(data)

  puts "Updating songs with ownership details..."
  data.songs.each{|song| song.owners = data.hashes[song.id]}

  puts "Building All Albums..."
  data.albums = Album.build_all(data)

  #Print out all songs
  puts "\nPrinting full details of all songs..."
  data.songs.each { |song| p song }
