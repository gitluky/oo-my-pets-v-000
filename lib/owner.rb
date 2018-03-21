require 'pry'

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
