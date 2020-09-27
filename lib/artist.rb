class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
    
    def add_song(song)
      song.artist = self
    end
      
    def add_song_by_name(name)
     song = song.new(name)
     song.artist = self
    end
 
  def self.song_count
    song.all.count
  end 
end