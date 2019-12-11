require_relative "./song"
require "pry"
class Artist
    attr_reader :name
    attr_accessor :songs
    
    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
        @songs.push(song)
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        self.add_song(song)
    end

    def self.song_count
        Song.all.length
    end

end