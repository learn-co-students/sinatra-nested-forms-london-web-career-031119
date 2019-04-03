class Ship
  attr_reader :name, :type, :booty
  @@ships = []

  def initialize(details)
    @name = details[:name]
    @type = details[:type]
    @booty = details[:booty]
    self.class.all << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships = []
  end
end
