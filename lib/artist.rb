class Artist
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
 
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def songs
    Song.all.select { |song| song.artist == self }
  end
  
  def genres
    self.songs.collect { |n| n.genre }
  end
end
