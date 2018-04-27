require 'pry'

class Owner
  

  
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a human."
  end

  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].map! do |dog|
      dog.mood = "happy"
      dog
    end
  end

  def play_with_cats
    @pets[:cats].map! do |cat|
      cat.mood = "happy"
      cat
    end
  end

  def feed_fish
    @pets[:fishes].map! do |fish|
      fish.mood = "happy"
      fish
    end
  end

  def sell_pets
    @pets.each do |key, value|
      value.each do |animal|
        animal.mood = "nervous"
      end
    end
    @pets = {}
  end

  def list_pets
    dog_count = @pets[:dogs].length
    cat_count = @pets[:cats].length
    fish_count = @pets[:fishes].length
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end