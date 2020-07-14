class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
       Song.all.select do |song|
      song.artist == self
    end
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def self.all
    @@all
  end
  
  def self.find(name)
    @@all.find do |artist1|
      artist1.name == name
    end
  end

  def self.create(name)
    artist = self.new(name)
    @@all << artist
    artist
  end
  
  def self.find_or_create_by_name(name)
    if @@all.include?(name)
      
  end
  
  def print_songs
  end

  


end