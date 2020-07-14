class Artist
  @@artistall = [ ]
  artistcounter = 0
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@artistall << self
    artistcounter += 1
    
  end
  
  def add_song(song1)
    song1.artist == self
  end
  
  def self.all
    
    
  
  
end