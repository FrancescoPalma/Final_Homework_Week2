require('minitest/autorun')
require('minitest/rg')
require_relative('../hotel')
require_relative('../room')
require_relative('../guest')

class TestHotel < Minitest::Test

  def setup
    @guest1 = Guest.new("Alex")
    @guest2 = Guest.new("Laura & Joe")
    
    @room1 = Room.new(max_number: 2, current: @guest2, daily_rate: 35)
    @room2 = Room.new(max_number: 1, current: @guest1, daily_rate: 20)
    
    @hotel = Hotel.new([@room1, @room2])
  end

  def test_hotel_has_2_rooms
    assert_equal(2, @hotel.rooms_number)
  end

end
