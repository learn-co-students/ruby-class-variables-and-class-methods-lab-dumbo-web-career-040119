class Song 
  
  attr_accessor :name, :artist, :genre, :count
  
  def initialize(name, artist, genre)
    
    @name = name
    @artist = artist
    @genre = genre
    @@count = 0  # song count
    @@count += 1
    @@artists = []
    @@artists << artist 
    @@genres = []
    @@genres << genre
  
  end 
  
  def self.genres 
    new_arr = @@genres.uniq
  
  def genre_count
    @@genre_hash = {}
    @@genres.each do |genre|
      if @@genres_hash[genre]
        @@genres_hash[genre] += 1
      else
        @@genres_hash[genre] = 1
      end
    end
  end
  
  def artist_count
    @@artist_hash = {}
    @@artists.each do |artist|
      if @@artists_hash[artist]
        @@artists_hash[artist] += 1 
      else 
        @@artists_hash[artist] = 1 
      end
    end
  end
    
end
  