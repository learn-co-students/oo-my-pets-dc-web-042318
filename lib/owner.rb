class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(species)
    @species = species
    @@all << self
    @@count += 1
    @pets = {:fishes => [], :dogs => [], :cats => []}
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

  def say_species
    return "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each do |dogs|
      dogs.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cats|
      cats.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fishes|
      fishes.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |key, value|
      value.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
