class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def songs 
    Song.all.select{|s| s.artist == self}
  end 
  
  def add_song(song_obj)
    @songs << song_obj
    song_obj.artist = self
  end 
  
  def add_song_by_name(name)
    song = Song.new(name)
    song.name = name 
    song.artist = self
    @songs << song 
  end 
    
  def self.song_count 
    Song.all.count
  end
end 
