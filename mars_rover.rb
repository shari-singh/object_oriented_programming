class Rover
  def initialize (x, y, degrees)
    @x = x
    @y = y
    @degrees = degrees # 0 = north, 90 = east, 180 = south, 270 or -90 = west
    @location = (x, y) # default at (0,0)
  end
  #moves rover forward
  def move

  end
  # turns rover in 90 degree increments
  def turn

  end
end

mars_rover = Rover.new(0, 0, 0) #starting at 0,0 on grid facing North
