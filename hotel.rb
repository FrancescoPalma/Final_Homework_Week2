class Hotel

  attr_reader :rooms

  def initialize(rooms)
    @rooms = rooms
  end

  def rooms_number
    return @rooms.size
  end

end