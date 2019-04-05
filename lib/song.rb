require 'pry'
class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1

        #if @@artists.include?(artist) == false 
            
            @@artists << artist
        #end
        
        #if @@genres.include?(genre) == false 
            
            @@genres << genre
            
        #end
    end

    def self.count 
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        hash = {}
        #binding.pry
        @@genres.group_by(&:itself).each do |k,v|
            hash[k] = v.length
        end
        return hash
    end

    def self.artist_count
        hash = {}
        #binding.pry
        @@artists.group_by(&:itself).each do |k,v|
            hash[k] = v.length
        end
        return hash
    end

end