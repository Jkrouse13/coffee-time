class Coffee

  attr_accessor :amount,
                :kind

  def initialize(kind, amount = 1)
    self.amount = amount
    self.kind = kind
  end

  def full?
    self.amount == 1
  end

  def empty?
    self.amount <= 0.01
    # puts amount
  end

  def drink!
    self.amount = self.amount - 0.33
    # puts amount
  end

end
