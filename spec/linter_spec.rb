require './lib/linter.rb'

describe Glamourly do
  test_string = 'Bad string example'
  let(:classer) { Glamourly.new(test_string) }

  describe '#populate_array' do
    it 'returns an array of strings' do
      expect(classer.populate_array).to eql(%w[bad string example])
    end
  end

  # describe '#level1_check' do
  #   it 'increments the @liner counter by one if there is a match for lyny' do
  #     classer.array = %w[lyny]
  #     classer.level1_check
  #     expect(classer.liner).to eql(1)
  #   end

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
  # end
end
