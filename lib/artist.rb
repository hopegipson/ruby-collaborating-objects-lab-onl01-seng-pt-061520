class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []

  end
  
   def add_song(song)
    self.songs << song
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
    artist1 = self.new(name)
    @@all << self
    artist1
  end
  
  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end

  end
  
  def print_songs
     puts @songs.collect {|song| song.name}
  end


  


end