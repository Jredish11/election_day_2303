require './lib/candidate'
require './lib/race'
require './lib/election'

RSpec.describe Election do
  describe "Election" do
    it "exists" do
      election = Election.new("2000")
      expect(election).to be_a(Election)
    end

    it "has a year" do
      election = Election.new("2000")
      expect(election.year).to eq("2000")
    end

    it "has an empty list of election races" do
      election = Election.new("2000")
      expect(election.races).to eq([])
    end

    it "adds a race to the list of election races" do
      election = Election.new("2000")
      governor = Race.new("Texas Governor")
      mayor = Race.new("Denver Mayor")
      election.add_race(governor)
      election.add_race(mayor)
      expect(election.races).to eq([governor, mayor])
    end

    it "has a list of all candidates in the election" do
      election = Election.new("2000")
      governor = Race.new("Texas Governor")
      candidate1 = Candidate.new({name: "Diana D", party: :democrat})
      candidate2 = Candidate.new({name: "Roberto R", party: :republican})
      election.add_race(governor)
      governor.register_candidate!(candidate1)
      governor.register_candidate!(candidate2)
      expect(election.candidates).to eq([candidate1, candidate2])
    end
  end
end













#vote_counts	A hash with each candidate's name as a key and their count of votes as the value.