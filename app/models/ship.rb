class Ship
    attr_reader :name, :type, :booty 
    @@all = [] 
    def initialize(name:, type:, booty:)
        @name = name 
        @type = type 
        @booty = booty 
        self.class.all << self 
    end 
    def self.all 
        @@all 
    end 
    def self.clear 
        @@all = [] 
    end 
end