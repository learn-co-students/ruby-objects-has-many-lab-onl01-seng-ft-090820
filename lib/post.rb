class Post

    @@all = []

    attr_accessor :title, :author

    def initialize(title)

        @title = title
        @@all << self

    end

    def author

        @author

    end

    def self.all

        @@all

    end

    def author_name

        if instance_variable_defined?("@author")
            return self.author.name
        else
            return nil
        end

    end

end