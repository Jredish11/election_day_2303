class Race
  attr_reader :office, :candidates, :open
  def initialize(office, open = true)
    @office = office
    @candidates = []
    @open = open
  end

  def register_candidate!(candidate_info)
    candidates << candidate_info
  end

  def open?
    @open
  end

  def close!
    @open = false
  end

  def winner
    if open?
      false
    else
      true
    end
  end
end
