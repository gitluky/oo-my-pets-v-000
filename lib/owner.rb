require 'pry'

class Owner
  @@owners = []

  def initialize
    self.class.owners << self
  end

  def self.owner_count
    owners.count
  end

  def owners
    @@owners
  end

  def reset_owners
    self.class.owners.clear
  end

end
