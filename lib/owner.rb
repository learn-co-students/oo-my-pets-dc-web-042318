class Owner
  attr_accessor :pets, :name, :dog
  attr_reader :species
  
  @@all = []
  @@count = 0
  
  def initialize(species)
    @species = species
    @pets = { :fishes => [], :dogs => [], :cats => [] }
    @@count += 1
    @@all << self
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    fish
    @pets[:fishes] << fish
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    cat
    @pets[:cats] << cat
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    dog
    dog.owner = self
    @pets[:dogs] << dog
  end
  
  def walk_dogs
    @pets[:dogs].each { |d| d.mood = 'happy' }
  end
  
  def play_with_cats
    @pets[:cats].each { |c| c.mood = 'happy' }
  end
  
  def feed_fish
    @pets[:fishes].each { |f| f.mood = 'happy' }
  end
  
  def sell_pets
    @pets.each do |key, value|
      value.each { |p| p.mood = 'nervous' }
    end
    @pets = { :fishes => [], :dogs => [], :cats => [] }
  end
  
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.reset_all
    @@count = 0
    @@all.clear
  end
end