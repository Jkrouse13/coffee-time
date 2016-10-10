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

  def needs_coffee?
    self.coffee.to_i == 0
  end

  def buy(kind)
    self.coffee =(kind)
  end

  def drink!
    if self.coffee.class == Espresso
      self.alertness += 0.4
    elsif self.coffee.class == Coffee
      self.alertness += 0.33
    elsif self.coffee.class == Tea
      self.alertness += 0.25
    else
      self.alertness += 0
  end
    self.coffee.drink!
  end

end
