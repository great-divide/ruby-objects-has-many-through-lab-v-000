class Genre
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def songs
    Song.all.select { |song| song.genre == self }
  end
  
  def artists
    songs.collect { 
  end
  
  def self.all
    @@all
  end
end
# Song.all.select { |song| song.artist == self }
