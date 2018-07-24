require 'pry'

class Artist

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song_instance|
      song_instance.artist == self
    end
  end

  def genres
    self.songs.map do |song_instance|
      song_instance.genre
    end
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

end
