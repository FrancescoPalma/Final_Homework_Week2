require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')

class TestRoom < MiniTest::Test

  def setup
    @guest1 = Guest.new("Alex")
    @guest2 = Guest.new("Laura & Joe")

    @occupied_room1 = Room.new(max_number: 2, current: @guest2, daily_rate: 35)
    @occupied_room2 = Room.new(max_number: 1, current: @guest1, daily_rate: 20)
  end

  def test_room_occupant
    assert_equal(@guest2, @occupied_room1.occupant)
  end

  def test_room_max_number
    assert_equal(2, @occupied_room1.max_number)
  end

  def test_daily_rate_single
    assert_equal(20, @occupied_room2.rate)
  end

  def test_daily_rate_double
    assert_equal(35, @occupied_room1.rate)
  end
 
end