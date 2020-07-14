class Song
  
  attr_accessor :artist, :name
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name= (name1)
    self.artist = Artist.find_or_create_by_name(name1)
    @artist = self.artist
  end
  
   def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end
  
end