require 'strscan'
require 'colorize'
require_relative 'vocabulary.rb'

class Glamourly
  attr_accessor :s, :liner, :error_level1, :error_level2, :array, :level1_hash, :level2_hash

  def initialize(string)
    @s = StringScanner.new(string)
    @liner = 1
    @error_level1 = 0
    @error_level2 = 0
    @array = []
    @level1_hash = Vocabulary.new.level1_hash
    @level2_hash = Vocabulary.new.level2_hash
  end

  def populate_array
    until @s.eos?
      @s.scan(/\s+/)
      @array << @s.scan(/\w+/)
    end
  end

  def level1_check
    @array.each do |word|
      if word == 'lyny'
        @liner += 1
      elsif @level1_hash.each do |k, _v|
        if k == word
          @error_level1 += 1
          puts "LINE:#{@liner}: Lacks Articulation - replace '#{word}' for a more suggestive adjetive".red
        end
      end
      end
    end
  end

  def level2_check
    @liner = 1
    @array.each do |word|
      if word == 'lyny'
        @liner += 1
      elsif @level2_hash.each do |k, v|
        if k == word
          @error_level2 += 1
          puts "LINE:#{@liner}: Lacks Engagement - '#{word}'. The following are possible substitutes: #{v}".yellow
        end
      end
      end
    end
  end

  def error_message
    puts "#{@error_level1} assassination(s) of the written language".red
    puts "#{@error_level2} attempt(s) to bore the reader to death".yellow
  end

  def hemmingway_badge
    puts 'Good job! You\'ve earned the Hemmingway badge! You\'re well on your way to literary stardom!'.green if @error_level1.zero? and @error_level2.zero?
  end

  def lint
    populate_array
    level1_check
    level2_check
    error_message
    hemmingway_badge
  end
end
