class Election
  attr_reader :year, :races
  def initialize(year)
    @year = year
    @races = []
  end

  def add_race(race)
    races << race
  end

  def candidates
    races.flat_map { |race| race.candidates }
  end

  def vote_counts
    vote_count_list = Hash.new(0)
    keys = races.each { |race| race.candidates.each {|candidate| vote_count_list[candidate.name] = candidate.votes } }
    vote_count_list
  end
end