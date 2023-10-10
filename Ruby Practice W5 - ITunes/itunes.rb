require 'csv'
require_relative 'actor','album','song','reader','utilities','error'

#songs_file = ARGV[0]       #for command line
#owners_file = ARG[1]       #for command line (would be used instead of the bottom line)
reader = Reader.new
songs_file = 'songs.csv'      #in RubyMine
owners_file = 'owners.csv'   #in RubyMine

puts "\nProcessing Songs from file: #{songs_file}"
$songs = reader.read_in_songs(songs_file)

puts "Processing Ownership from file: #{owners_file}"
$actors = Actor.build_all()

puts "Updating songs with ownership details..."
$songs.each{|song| song.owners = $hash_owners[song.id]}

puts "Building All Albums..."
$albums = Album.build_all()

# markkean% ruby itunes.rb songs.csv owners.csv
