class Song
    attr_accessor :artist
    attr_reader :name

    @@all = []

    def save
        @@all.push(self)
    end

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def artist_name
        @artist ? @artist.name : nil
    end
end