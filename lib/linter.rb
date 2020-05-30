require 'strscan'

text_file = File.open('../user.txt')
text = text_file.read
one_liner = text.gsub(/\n/, ' lyny ')
text_clean = one_liner.gsub(/[^0-9a-z\n ]/i, '')

s = StringScanner.new(text_clean)

liner = 1
error1 = 0
error2 = 0
array = []

# p text_clean

until s.eos? do
  s.scan(/\s+/)
  array << s.scan(/\w+/)
end

level1_hash =
  {
    'happy' => ['playful', 'content'],
    'sad' => ['lonely', 'vulnerable'],
    'disgusted' => ['disapproving', 'disappointed'],
    'angry' => ['let down', 'resentful'],
    'fearful' => ['scared', 'anxious'],
    'bad' => ['bored', 'busy'],
    'surprised' => ['startled', 'confused']
  }

level2_hash =
  {
    'playful' => ['aroused', 'cheeky'],
    'content' => ['free', 'joyful'],
    'lonely' => ['isolated', 'abandoned'],
    'vulnerable' => ['victimized', 'fragile']
  }

array.each do |word|
  if word == 'lyny'
    liner += 1
  elsif level1_hash.each do |k, v|
    if k == word
      error1 += 1
      puts "LINE:#{liner}: '#{word}'=> replace for a more suggestive adjetive"
    end
  end
  end
end

puts "#{error1} assassinations of literature."

array.each do |word|
  if word == 'lyny'
    liner += 1
  elsif level2_hash.each do |k, v|
    if k == word
      error2 += 1
      puts "LINE:#{liner}: '#{word}' => consider substituting for an even more descriptive word" 
    end
  end
  end
end

puts "#{error2} opportunities for improvement"

if error1 == 0 and error2 == 0
puts "Good job! You just earned the Hemmingway badge!\n You're on your way to literary stardom!"
end
