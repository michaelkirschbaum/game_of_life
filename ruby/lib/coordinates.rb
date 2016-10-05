class Coordinates
  attr_reader :x
  attr_reader :y

  def initialize(x, y)
    @x_coor = x
    @y_coor = y
  end

  #TODO all of these need to know about the edges of the grid
  def left
    if x - 1 < 0
      return null

    Coordinates.new(x-1, y)
  end

  def right
    Coordinates.new(x+1, y)
  end

  def top
    if y - 1 < 0
      return null

    Coordinates.new(x, y-1)
  end

  def bottom
    Coordinates.new(x, y+1)
  end

  def top_left
  end

  def top_right
  end

  def bottom_left
  end

  def bottom_right
  end
end