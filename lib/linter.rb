require 'strscan'
require 'colorize'

class Glamourly
  
  def initialize(string)
    @s = StringScanner.new(string)
    @liner = 1
    @error_level1 = 0
    @error_level2 = 0
    @array = []
    @level1_hash =
    {
      'happy' => ['playful', 'content'],
      'sad' => ['lonely', 'vulnerable'],
      'disgusted' => ['disapproving', 'disappointed'],
      'angry' => ['let down', 'resentful'],
      'fearful' => ['scared', 'anxious'],
      'bad' => ['bored', 'busy'],
      'surprised' => ['startled', 'confused']
    }

    @level2_hash =
    {
      'playful' => ['aroused', 'cheeky'],
      'content' => ['free', 'joyful'],
      'interested' => ['curious', 'inquisitive'],
      'proud' => ['succesful', 'confident'],
      'accepted' => ['respected', 'valued'],
      'powerful' => ['courageous', 'creative'],
      'peaceful' => ['loving', 'thankful'],
      'trusting' => ['sensitive', 'intimate'],
      'optimistic' => ['hopeful', 'inspired'],
      'lonely' => ['isolated', 'abandoned'],
      'vulnerable' => ['victimized', 'fragile'],
      'despair' => ['grief', 'powerless'],
      'guilty' => ['remorseful', 'ashamed'],
      'depressed' => ['inferior', 'empty'],
      'hurt' => ['embarrassed', 'disappointed'],
      'repelled' => ['horrified', 'hesitant'],
      'awful' => ['nauseated', 'detestable'],
      'disappointed' => ['apalled', 'revolted'],
      'disapproving' => ['judgemental', 'embarrased'],
      'critical' => ['sceptical', 'dismissive'],
      'distant' => ['withdrawn', 'numb'],
      'frustrated' => ['infuriated', 'annoyed'],
      'aggressive' => ['provoked', 'hostile'],
      'mad' => ['furious', 'jealous'],
      'bitter' => ['indignat', 'violated'],
      'humiliated' => ['disrespected', 'ridiculed'],
      'let down' => ['betrayed', 'resentful'],
      'threatened' => ['nervous', 'exposed'],
      'rejected' => ['excluded', 'persecuted'],
      'weak' => ['worthless', 'insignificant'],
      'insecure' => ['inadequate', 'inferior'],
      'anxious' => ['overwhelmed', 'worried'],
      'scared' => ['helpless', 'frightened'],
      'bored' => ['indifferent', 'apathetic'],
      'busy' => ['pressured', 'rushed'],
      'stressed' => ['overwhelmed', 'out of control'],
      'tired' => ['sleepy', 'unfocussed'],
      'startled' => ['shocked', 'dismayed'],
      'confused' => ['disillusioned', 'perplexed'],
      'amazed' => ['astonished', 'awe'],
      'excited' => ['eager', 'energetic']
    }
  end
  
  def populate_array
    until @s.eos? do
      @s.scan(/\s+/)
      @array << @s.scan(/\w+/)
    end
  end

  def level1_check
    @array.each do |word|
      if word == 'lyny'
        @liner += 1
      elsif @level1_hash.each do |k, v|
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
    if @error_level1 == 0 and @error_level2 == 0
      puts 'Good job! You\'ve earned the Hemmingway badge! You\'re well on your way to literary stardom!'.green
    end
  end

  def lint
    populate_array
    level1_check
    level2_check
    error_message
    hemmingway_badge
  end


end
