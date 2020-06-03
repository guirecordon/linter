require './lib/vocabulary.rb'

describe Vocabulary do
  describe '#level1_hash' do
    it "returns a hash" do
      vocabulary = Vocabulary.new
      expect(vocabulary.level1_hash.class).to eq Hash
    end
  end

  describe '#level2_hash' do
    it "returns a hash" do
      vocabulary = Vocabulary.new
      expect(vocabulary.level2_hash.class).to eq Hash
    end
  end

end