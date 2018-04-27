class Owner
attr_reader :species
attr_accessor :pets, :name

@@all = []

def initialize (name)
  @name = name
  @pets = {fishes: [], cats: [], dogs:[]}
  @@all << self
  @species = "human"
end

def self.all
 @@all
end

def self.reset_all
  @@all = []
end

def self.count
  @@all.count
end

def say_species
 "I am a #{self.species}."
end

def buy_fish(fish_name)
  fish = Fish.new(fish_name) ##<- calls on name of a fish
  self.pets[:fishes] << fish ##<- now the own knows about a fish
end

def buy_cat(cat_name)
  cat = Cat.new(cat_name)
  self.pets[:cats] << cat
end

def buy_dog(dog_name)
  dog = Dog.new(dog_name)
  self.pets[:dogs] << dog
end

def walk_dogs
  self.pets[:dogs].collect!{|dog| dog.mood = "happy"}
end

def play_with_cats
  self.pets[:cats].collect!{|cat| cat.mood = "happy"}
end

def feed_fish
  self.pets[:fishes].collect!{|fish| fish.mood = "happy"}
end

def list_pets
  "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
end

def sell_pets
  self.pets[:fishes].collect!{|fish| fish.mood = "nervous"}
  self.pets[:dogs].collect!{|dog| dog.mood = "nervous"}
  self.pets[:cats].collect!{|cat| cat.mood = "nervous"}
  self.pets = []
end

end
