class Song
  
  attr_accessor :name, :artist
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
    self.artist.add_song(self)
  end
  
end