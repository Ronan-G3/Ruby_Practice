#Reader file

class Reader
  #read in the songs
  def read_in_the_songs(csv_file_name)
    songs = []
    CSV.foreach(csv_file_name, :headers => true) do |row|
      songname, artist, album, time, id = row[0], row[1], row[3], row[4]
      unless (songname =~ /#/)
        songs << Song.new(songname,album,artist,time.to_f, nil, id)
      end
    end
  end
  songs
end

#read in the owners.csv file
def read_in_ownership(csv_file_name, temp_hash = Hash.new)
  CSV.foreach(csv_file_name, :headers => true) do |row|
    song_id, owner_data = row[0], row[1]
    unless (song_id =~ /#/)
      temp_hash[song_id] = owner_data
    end
  end
  temp_hash
end
