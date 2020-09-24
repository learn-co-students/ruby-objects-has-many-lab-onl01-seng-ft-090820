class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def add_song(song)
    song.artist = self
  end

  def self.all
    @@all
  end

  def add_song_by_name(name)
    a_new_song = Song.new(name)
    add_song(a_new_song)
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def self.song_count
    Song.all.count
  end
end
