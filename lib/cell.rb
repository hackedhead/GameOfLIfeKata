class Cell

  attr_reader :status

  LIVE = true
  DEAD = false

  def initialize(status = DEAD)
    @status = status
  end

  def toggle
    @status = !@status
  end
end