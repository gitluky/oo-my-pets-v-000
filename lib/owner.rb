require 'pry'

class Owner
  @@all = []

  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @species = species
    self.class.all << self
    @pets = {cats: [], dogs: [], fishes: []}
  end

  def self.owner_count
    self.all.count
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def species
    puts "I am a #{species}"
  end

  def buy_fish(fish)
    pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    pets[:dogs] << Dog.new(dog)
  end

  def walks_dogs
    pets[:dogs].each {|dog| dog.mood = 'happy'}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = 'happy'}
  end

  def feed_fish
    pets[:fishes].each {|fish| cat.fish = 'happy'}
  end

  def sell_pets
    pets.each do |pet_type, pet|
      pet.each {|name| name.mood = 'nervous'}
    end
  end

  def list_pets
    pets.collect {|pet_type, pet| pet.flatten}
  end
end

new_owner = Owner.new
