require './lib/candidate'
require './lib/race'

RSpec.describe Race do
  describe "Candidate" do
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
      race.register_candidate!({name: "Diana D", party: :democrat})
      expect(candidate1.class).to eq(Candidate)
      expect(candidate1.name).to eq("Diana D")
      expect(candidate1.party).to eq(:democrat)
    end


  end
end










#  candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})
# => #<Candidate:0x00007f9edf376c90...>

#  candidate1.class
# => Candidate

#  candidate1.name
# => "Diana D"

#  candidate1.party
# => :democrat

#  candidate2 = race.register_candidate!({name: "Roberto R", party: :republican})
# => #<Candidate:0x00007f9edf386780...>

#  race.candidates
# => [#<Candidate:0x00007f9edf376c90...>, #<Candidate:0x00007f9edf386780...>]