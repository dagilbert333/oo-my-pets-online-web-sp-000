class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  
  def initialize(species, pets = {fishes: [], cats: [], dogs: []})
    @species = species
    @pets = pets
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    pets[:fishes] = new_fish
    
  end
  
end