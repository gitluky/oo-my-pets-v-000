require 'pry'

class Owner
  @@owners = []

  def initialize
    @@owners << self
  end

  def self.owner_count
    owners.count
  end

  def owners
    @@owners
  end

end
