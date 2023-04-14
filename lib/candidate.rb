class Candidate
  attr_reader :name, :party, :votes
  def initialize(registry)
    @name = registry[:name]
    @party = registry[:party]
    @votes = 0
  end

  def vote_for!
    @votes += 1
  end
end