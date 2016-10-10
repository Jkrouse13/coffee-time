require 'minitest/autorun'

require './human'
require './coffee'
require './espresso'
require './tea'

class CaffeineTest < MiniTest::Test
  def test_humans_tend_to_be_sleepy
    tyler = Human.new "Tyler"
    assert tyler.alertness < 0.1
  end

  def test_humans_need_coffee
    randy = Human.new "Randy"
    refute randy.has_coffee?
    assert randy.needs_coffee?
  end

  def test_humans_can_drink_coffee
    sherri = Human.new "Sherri"
    tsmf = Coffee.new "Triple Shot Mocha Frappuccino"
    assert tsmf.full?

    sherri.buy tsmf
    sherri.drink!
    assert(sherri.alertness.between?(0.1, 0.33))
    refute tsmf.full?
    refute tsmf.empty?
  end

  def test_humans_can_drink_all_the_coffee
    trevor = Human.new "Trevor"
    tsmf = Coffee.new "Triple Shot Mocha Frappuccino"
    trevor.buy tsmf

    3.times { trevor.drink! }
    assert tsmf.empty?
    assert trevor.alertness > 0.9
  end

  def test_espresso_works_differently
    jim = Human.new "Jim"
    sse = Espresso.new "Single Shot Espresso"
    jim.buy sse
    jim.drink!

    assert jim.alertness == 0.4
    assert sse.empty?
  end

  def test_tea_is_weaker
    jon = Human.new "Jon"
    gt = Tea.new "Green Tea"
    jon.buy gt
    4.times {jon.drink!}

    assert jon.alertness == 1
    refute gt.empty?
  end
end
