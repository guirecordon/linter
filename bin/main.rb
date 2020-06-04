require_relative '../lib/linter.rb'
require 'strscan'
require 'colorize'
require 'lolize'

colorizer = Lolize::Colorizer.new
colorizer.write '

Glamourly.
The single best way to glamorize anything you write on your computer.


'

text_file = File.open('user.txt')
text = text_file.read
one_liner = text.gsub(/\n/, ' lyny ')
lower_caser = one_liner.downcase
text_clean = lower_caser.gsub(/[^0-9a-z\n ]/i, '')

run = Glamourly.new(text_clean)

run.lint
