class Cell
  attr_reader :alive
  attr_reader :coordinates

  def initialize(coordinates, alive = false)
    @alive = alive
    @coordinates = coordinates
  end

  def alive?
    !!@alive
  end

  def next_generation_state(neighbors)
    alive_neighbors_count = neighbors.select(&:alive?).length
  end
end
