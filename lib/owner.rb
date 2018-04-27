class Owner
  # code goes here
@@all = []
attr_accessor :pets, :name
attr_reader :species

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @name = name
    @@all << self
  end

def self.count
  @@all.count
end

def self.reset_all
  @@all = []
end

def self.all
  @@all
end

def say_species
  "I am a #{@species}."
end

def buy_fish(fish_name)
  @pets[:fishes] << Fish.new(fish_name)
end

def buy_cat(cat_name)
  @pets[:cats] << Cat.new(cat_name)
end

def buy_dog(dog_name)
  @pets[:dogs] << Dog.new(dog_name)
end

def walk_dogs
  @pets[:dogs].each do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  @pets[:cats].each do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  @pets[:fishes].each do |fish|
    fish.mood = "happy"
  end
end

def sell_pets
  @pets.each do |pet_type, pets|
    pets.each do |pet|
    pet.mood = "nervous"
  end
end
@pets = {fishes: [], cats: [], dogs: []}
end

def list_pets
return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
end

end
