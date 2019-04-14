require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.genre_count
    output = {}
    @@genres.each do |genre|
      output.has_key?(genre) ? output[genre] += 1 : output[genre] = 1
    end
    output
  end

  def self.artist_count
    output = {}
    @@artists.each do |artist|
      output.has_key?(artist) ? output[artist] += 1 : output[artist] = 1
    end
    output
  end


end
