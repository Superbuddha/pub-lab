require('minitest/autorun')
require_relative('../drink.rb')

class TestDrink < MiniTest::Test

def setup
  @drink1 = Drink.new("beer", 4.0)
end

def test_has_name
  assert_equal("beer", @drink1.name())
end

def test_has_price
  assert_equal(4.0, @drink1.price())
end
end
