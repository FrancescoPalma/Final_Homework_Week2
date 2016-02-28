require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Alex")
    @guest2 = Guest.new("Laura & Joe")  
  end

  def test_guest_name
    assert_equal("Alex", @guest1.name)
  end

  def test_couple_name
    assert_equal('Laura & Joe', @guest2.name)
  end

end