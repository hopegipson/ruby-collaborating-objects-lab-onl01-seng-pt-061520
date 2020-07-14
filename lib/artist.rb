class Artist
  attr_accessor :name
  @@counter = 0
  
  def initialize(name)
    @name = name
  end
  
  def songs
       Song.all.select do |song|
      song.artist == self
    end
  end
  
  def add_song(song)
    song.artist = self
    @@counter += 1
  end
  


end