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
  end
end











#new	An Election object that has an attribute of year (string data type).
#year	The year of the election (string).
#races	An array of Race objects.
#add_race(race)	An array of Race objects.
#candidates	An array of all Candidate objects in the election.
#vote_counts	A hash with each candidate's name as a key and their count of votes as the value.