require 'pry'

class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    unique_genres = @@genres.uniq
  end

  def self.artists
    unique_artists = @@artists.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      genre_hash[genre] += 1 if genre_hash[genre]
      genre_hash[genre] = 1 if !genre_hash[genre]
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |artist|
      artist_hash[artist] += 1 if artist_hash[artist]
      artist_hash[artist] = 1 if !artist_hash[artist]
    end
    artist_hash
  end

end
