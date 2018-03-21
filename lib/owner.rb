require 'pry'

class Owner
  @@all = []

  def initialize
    self.class.all << self
  end

  def self.owner_count
    self.class.all.count
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.class.all.clear
  end

end
