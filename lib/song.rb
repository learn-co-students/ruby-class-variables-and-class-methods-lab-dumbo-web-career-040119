require 'pry'

class Song

  attr_reader :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count #you can't name the method starting with .
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.select do |genre|
      genre_hash[genre] += 1 if genre_hash[genre] #dodaje numer do ilości
      genre_hash[genre] = 1 if !genre_hash[genre]
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.select do |artist|
      artist_hash[artist] += 1 if artist_hash[artist] #why if they are the other way round it adds more
      artist_hash[artist] = 1 if !artist_hash[artist]
    end
    artist_hash
  end

end
