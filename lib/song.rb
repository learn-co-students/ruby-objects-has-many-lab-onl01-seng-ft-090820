class Song

    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name)

        @name = name 
        @@all << self

    end

    def artist
        @artist
    end

    def artist_name

        if instance_variable_defined?("@artist")
            return self.artist.name
        else
            return nil
        end

    end

    def self.all
        @@all
    end



end