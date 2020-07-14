class Song
  
  attr_accessor :name, :genre, :artist
  @@songall = [ ]
  
  def initialize(name)
    @name = name
    @@songall << self
  end
  
  def self.all
    @@songall
  end
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  
end