require('minitest/autorun')
require('minitest/rg')
require_relative('../drink.rb')
require_relative('../pub.rb')
require_relative('../customer.rb')

class CustomerTest < Minitest::Test

  def setup
    @customer1 = Customer.new("Stephan", 100.0)
  end

  def test_has_name
    assert_equal("Stephan", @customer1.name())
  end

  def test_has_wallet
    assert_equal(100.0, @customer1.wallet())
  end
end
