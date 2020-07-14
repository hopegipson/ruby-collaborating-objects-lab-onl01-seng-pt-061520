class Artist
  @@artistall = [ ]
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@artistall << self

  end
  
  def add_song(stitle)
    stitle.artist = self
  end
  
  def self.all
  end
    
    
  
  
end