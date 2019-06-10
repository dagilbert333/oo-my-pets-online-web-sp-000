class Owner
  attr_accessor :pets
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def self.all
    @@all
  end
end