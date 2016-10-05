class Grid

  def self.size
    100
  end

  # Initialize a square grid of cells that is size x size
  def initialize
    @cells = Array.new(Grid.size) { Array.new(Grid.size) }
    Grid.size.times do |row_index|
      Grid.size.times do |column_index|
        coordinates = Coordinates.new(row_index, column_index)
        @cells[row_index][column_index] = Cell.new(coordinates)
      end
    end
  end

  def neighbors_for(coordinates)
    [lookup(coordinates.left), lookup(coordinates.right), lookup(coordinates.top), lookup(coordinates.bottom)].compact
  end

  def lookup(coordinates)
    cells[coordinates.x][coordinates.y]
  end

  private

  def cells
    @cells
  end
end
