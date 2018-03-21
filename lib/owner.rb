require 'pry'
require_relative './lib/cat.rb'
require_relative './lib/dog.rb'
require_relative './lib/fish.rb'

class Owner
  @@all = []

  attr_accessor :name
  attr_reader :species

  def initialize(species)
    @species = species
    self.class.all << self
    @pets = {cat: [], dog: [], fish: []}
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
    puts "#{species}"
  end

  def buy_fish(fish)
    pets[:fish] << fish unless !fish.is_a?(Fish)
  end

  def buy_cat
    pets[:cat] << cat unless !cat.is_a?(Cat)
  end

  def buy_dog
    pets[:dog] << dog unless !dog.is_a?(Dog)

new_owner = Owner.new
