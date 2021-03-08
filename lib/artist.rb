
class Artist
        attr_accessor :name
    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def self.song_count
        Song.all.map{|song| song.artist == self}.count
    end
end





# require 'pry'

# class Artist

#     attr_accessor :name

#     @@all_artists = []

#     def initialize(name)
#         @name = name
#         @songs = []
#         @@all_artists << self
#     end

#    def add_song(song)
#         @songs << song
#         song.artist = self
#    end


#     def songs
#         Song.all.select{|song| song.artist == self}
#     end

#     def add_song_by_name (name)
#         song = Song.new(name)
#         song.artist = self
#     end

#     def self.song_count
#         total = 0
#         @@all_artists.count{|artist| total += artist.songs.length}
#         total

#     end

# end
