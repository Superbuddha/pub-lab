require('minitest/autorun')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class TestPub <MiniTest::Test

  def setup
    @pub = Pub.new("The Highlander", 200, drinks)
  end

  def test_has_name
    assert_equal("The Highlander", @pub.name())
end
end
