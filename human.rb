class Human
  attr_accessor :name,
                :alertness,
                :coffee

  def initialize(name, alertness=0)
    self.name = name
    self.alertness = alertness
  end

  def has_coffee?
    self.coffee.to_i > 0
  end

  def needs_coffee
    self.coffee.to_i == 0
  end

end
