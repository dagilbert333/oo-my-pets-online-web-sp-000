class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  
  def initialize(species, pets = {fishes: [], cats: [], dogs: []})
    @species = species
    @pets = pets
    @@all = 
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count.uniq
  end
  
  def self.reset 
    @@all.clear
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  
end