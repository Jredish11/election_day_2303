require './lib/candidate'
require './lib/race'

RSpec.describe Race do
  describe "Race" do
    it "exists" do
      race = Race.new("Texas Governor")
      expect(race).to be_a(Race)
    end

    it "has a office being run for" do
      race = Race.new("Texas Governor")
      expect(race.office).to eq("Texas Governor")
    end

    it "has an empty list of candidates" do
      race = Race.new("Texas Governor")
      expect(race.candidates).to eq([])
    end

    it "registers a candidate" do
      race = Race.new("Texas Governor")
      candidate1 = Candidate.new({name: "Diana D", party: :democrat})
      race.register_candidate!(candidate1)
      expect(candidate1.class).to eq(Candidate)
      expect(candidate1.name).to eq("Diana D")
      expect(candidate1.party).to eq(:democrat)
      candidate2 = Candidate.new({name: "Roberto R", party: :republican})
      race.register_candidate!(candidate2)
      expect(race.candidates).to eq([candidate1, candidate2])
    end
  end
end










