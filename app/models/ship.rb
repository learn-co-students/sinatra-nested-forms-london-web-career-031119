class Ship

  attr_reader :name, :type, :booty

  def initialize (name, type, booty)
    @name = name
    @booty = booty
    @type = type
    @all << self
  end

  def self.all
    @all
  end

  def self.clear
    @all = []
  end
end
