class Song
  
  attr_accessor :name, :genre, :artist
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name= (name)
   self.artist = Artist.find_or_create_by_name(name)
   


  
end