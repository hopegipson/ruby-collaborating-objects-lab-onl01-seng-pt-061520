class Song
  @@all = [ ]
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename
  end
  
  def artist_name=(artistname)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = artistname
    end
  end
  
end