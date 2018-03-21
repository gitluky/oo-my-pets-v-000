require 'pry'
require_relative './lib/cat.db'
require_relative './lib/dog.db'
require_relative './lib/fish.db'

class Owner
  @@all = []
  attr_reader :owner_type

  def initialize(owner_type)
    @owner_type = owner_type
    self.class.all << self
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

end

new_owner = Owner.new
