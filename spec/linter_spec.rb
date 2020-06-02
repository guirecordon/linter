require './lib/linter.rb'
require 'strscan'

describe Glamourly do

  describe '#populate_array' do
    it 'returns an array of strings' do
      glamourly = Glamourly.new('bad string example')
      expect(glamourly.populate_array).to eq %w[bad string example]
    end
  end

  describe '#level1_check' do
    it 'increments the @liner counter by one if there is a match for lyny' do
      glamourly = Glamourly.new('lyny lyny lyny')
      glamourly.populate_array
      glamourly.level1_check
      expect(glamourly.liner).to eql(4)
    end

    it 'does not increment the @liner counter if there is not a match for lyny' do
      glamourly = Glamourly.new('no match for new lines')
      glamourly.populate_array
      glamourly.level1_check
      expect(glamourly.liner).to eql(1)
    end


  #   it 'prints an error if a word match is found' do
  #     classer.array = %w[bad lyny]
  #     expect(classer.level1_check).to output("LINE:1: Lacks Articulation - replace 'bad' for a more suggestive adjetive\n").to_stdout
  #   end
  # end

  # describe '#level2_check' do
  #   it 'increments the @liner counter by one if there is a match for lyny' do
  #     classer.array = %w[blah line lyny]
  #     classer.level2_check
  #     expect(classer.liner).to eql(2)
  #   end

  #   it 'prints an error if a word match is found' do
  #     classer.array = %w[vulnerable lyny]
  #     expect(classer.level2_check).to output("LINE:1: Lacks Engagement - 'vulnerable'. The following are possible substitutes: ['victimized', 'fragile']\n").to_stdout
  #   end
  end
end
