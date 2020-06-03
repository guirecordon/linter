require './lib/linter.rb'
require 'strscan'

describe Glamourly do

  describe '#populate_array' do
    it 'returns an array of strings' do
      glamourly = Glamourly.new('bad example string')
      expect(glamourly.populate_array).to eq %w[bad example string]
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

    it 'prints to the console if a word match is found' do
      glamourly = Glamourly.new('bad example string')
      glamourly.populate_array
      expect{ glamourly.level1_check }.to output{ "LINE:1: Lacks Articulation - replace 'bad' with a more suggestive adjetive\n" }.to_stdout
    end

    it 'increments the variable @error_level1 if a word match is found' do
      glamourly = Glamourly.new('bad example string')
      glamourly.populate_array
      glamourly.level1_check
      expect(glamourly.error_level1).to eq 1
    end

    it 'does not increment the variable @error_level1 if no word match is found' do
      glamourly = Glamourly.new('no match found')
      glamourly.populate_array
      glamourly.level1_check
      expect(glamourly.error_level1).to eq 0
    end
  end

  describe '#level2_check' do
    it 'increments the @liner counter by one if there is a match for lyny' do
      glamourly = Glamourly.new('lyny lyny lyny')
      glamourly.populate_array
      glamourly.level2_check
      expect(glamourly.liner).to eql(4)
    end

    it 'does not increment the @liner counter if there is not a match for lyny' do
      glamourly = Glamourly.new('no match for new lines')
      glamourly.populate_array
      glamourly.level2_check
      expect(glamourly.liner).to eql(1)
    end

    it 'prints to the console if a word match is found' do
      glamourly = Glamourly.new('vulnerable example string')
      glamourly.populate_array
      expect{ glamourly.level2_check }.to output{ "LINE:1: Lacks Engagement - 'vulnerable'. The following are possible substitutes: ['victimized', 'fragile']\n" }.to_stdout
    end

    it 'increments the variable @error_level1 if a word match is found' do
      glamourly = Glamourly.new('critical example string')
      glamourly.populate_array
      glamourly.level2_check
      expect(glamourly.error_level2).to eq 1
    end

    it 'does not increment the variable @error_level1 if no word match is found' do
      glamourly = Glamourly.new('no match found')
      glamourly.populate_array
      glamourly.level2_check
      expect(glamourly.error_level2).to eq 0
    end
  end

  describe '#error_message' do
    it 'prints to the console the error counts' do
      glamourly = Glamourly.new('This is a happy and powerful example')
      glamourly.populate_array
      glamourly.level1_check
      glamourly.level2_check
      expect{ glamourly.error_message }.to output{ "1 assassination(s) of the written language\n"
    "1 attempt(s) to bore the reader to death\n" }.to_stdout
    end
  end

describe '#hemmingway_badge' do
    it 'prints to the console if both error_level1 and error_level2 equal to zero' do
      glamourly = Glamourly.new('Any string can go here for this example')
      expect{ glamourly.hemmingway_badge }.to output{ 'Good job! You\'ve earned the Hemmingway badge! 
      You\'re well on your way to literary stardom!' }.to_stdout
    end
  end


end
