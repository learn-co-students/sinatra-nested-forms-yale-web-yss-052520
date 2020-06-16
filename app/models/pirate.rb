require 'pry'

class Pirate
    attr_reader :name, :weight, :height
    @@all = [] 
    def initialize(name:, weight:, height:)
        @name = name 
        @weight = weight 
        @height= height 
        self.class.all << self 
    end 
    def self.all 
        @@all 
    end 
end

