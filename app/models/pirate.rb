class Pirate

    attr_accessor :name, :weight, :height 

    @@all = []

    def initialize(name, weight, hegiht)
        @name = name 
        @weight = weight 
        @height = height 
        save
    end

    def save 
        self.class.all << self 
    end

    def self.all 
        @@all 
    end
end