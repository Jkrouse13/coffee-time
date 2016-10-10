class Coffee

  attr_accessor :amount,
                :kind

  def initialize(amount = 1, kind)
    self.amount = amount
    self.kind = kind
  end

  def full?
    self.amount == 1
  end

  def empty?
    self.amount == 0
  end

  def self.drink!
    self.amount - 0.33
  end
end
