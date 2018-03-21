require 'pry'

class Owner
  @@all = []

  def initialize
    binding.pry
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
