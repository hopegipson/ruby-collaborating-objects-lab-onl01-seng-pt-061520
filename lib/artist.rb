class Artist
  @@artistall = [ ]
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@artistall << self
    
  end
  
  def add_song(song1)
    song1.artist == self
  end
    
  
  
end