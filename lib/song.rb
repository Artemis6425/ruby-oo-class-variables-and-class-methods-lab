class Song
    @@artists = []
    @@count = 0
    @@genres = []
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@count +=1
        @@genres << genre
    end
    attr_accessor :name, :artist, :genre
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
        temp = {}
        @@genres.each do |lmao|
            if temp[lmao] == nil
                temp[lmao] = 0
            end
            temp[lmao] +=1
        end
        temp
    end
    def self.artist_count
        temp = {}
        @@artists.each do |lmao|
            if temp[lmao] == nil
                temp[lmao] = 0
            end
            temp[lmao] +=1
        end
        temp
    end
end