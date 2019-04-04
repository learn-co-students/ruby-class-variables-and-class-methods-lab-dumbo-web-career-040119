class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  # Make empty array's to hold the values of artists and genres.
  @@artists = []
  @@genres = []

  # Define your Song class such that an individual song is initialized with a
  # name, artist and genre.
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    # Every time we make an instance, we want @@count to be increased by 1. We
    # also want to add the artist to the array of artists (same as genres).
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  # Write a class method .count that returns the total number of songs created.
  def self.count
    @@count
  end

  # Write a class method, .genres that returns an array of all of the genres of
  # existing songs. This array should contain only unique genres.
  def self.genres
    @@genres.uniq!
  end

  # Write a class method .artists that returns an array of all of the artists
  # of the existing songs. This array should only contain unique artists.
  def self.artists
    @@artists.uniq!
  end

  # Write a class method, .genre_count, that returns a hash in which the keys
  # are the names of each genre.
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      # If the genre_count hash contains a key of genre, add one to the value
      if genre_count[genre]
        genre_count[genre] += 1
      # If the genre_count doesnt have any keys, it will create one (genre)
      # and set it equal to 1.
      else
        genre_count[genre] = 1
      end
    end
    # Return the hash at the end
    genre_count
  end

  # Similar to genre_count
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end

end
