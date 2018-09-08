require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class TestPub <MiniTest::Test

  def setup
    @drink1 = Drink.new("beer", 4.0)
    @drink2 = Drink.new("cider", 3.0)
    @drink3 = Drink.new("water", 3.0)
    @drink4 = Drink.new("whisky", 5.0)
    drinks = [@drink1, @drink2, @drink3, @drink4]
    @pub = Pub.new("The Highlander", 200, drinks)
    @customer = Customer.new("Henry", 50.0)
  end

  def test_pub_test_has_name
    assert_equal("The Highlander", @pub.name())
end

def test_pub_has_till
  assert_equal(200, @pub.till())
end

def test_has_drinks
  assert_equal(4, @pub.drinks().count())
end

 def test_pub_can_serve_drink
    @pub.serve(@customer, @drink1)
    assert_equal(46.0, @customer.wallet())
    assert_equal(204.0, @pub.till())
  end
end
