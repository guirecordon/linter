require './lib/linter.rb'

describe Glamourly do
  let(:classer) { Glamourly.new('This is a bad test string') }

  describe "#populate_array" do
    it "returns an array of strings" do
      expect(classer.populate_array).to eql(['This', 'is', 'a', 'bad', 'test', 'string'])
    end
  end

  describe "#level1_check" do
    it "increments the @liner counter by one if there is a match for lyny" do
      classer.array = ['liny', 'line-break']
      classer.level1_check
      expect(classer.linter).to eql(1)
    end

    it "prints an error if a word match is found" do
      classer.array = ['bad', 'lyny']
      expect(classer.level1_check).to eql("LINE:1: Lacks Articulation - replace 'bad' for a more suggestive adjetive")
    end
  end

  describe "#level2_check" do
  it "increments the @liner counter by one if there is a match for lyny" do
      classer.array = ['liny', 'line-break']
      classer.level2_check
      expect(classer.linter).to eql(1)
  end

  it "prints an error if a word match is found" do
      classer.array = ['vulnerable', 'lyny']
      expect(classer.level2_check).to eql("LINE:1: Lacks Engagement - 'vulnerable'. The following are possible substitutes: ['victimized', 'fragile']")
    end
  end
end
