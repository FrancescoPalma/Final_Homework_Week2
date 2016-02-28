
class Room

  attr_reader :occupant, :max_number, :rate

  def initialize(params)
    @occupant = params[:current]
    @max_number = params[:max_number]
    @rate = params[:daily_rate]
  end

end