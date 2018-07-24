require "pry"

class Genre

  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def songs
    Song.all.select do |song_instance|
      song_instance.genre == self
    end
  end

  def artists
    songs.map do |song_instance|
      song_instance.artist
    end
  end

end
