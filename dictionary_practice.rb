require "http"

system "clear"

puts "Please enter a word you want a definition for:"

word = gets.chomp.downcase

response = HTTP.(get)("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=PUTAPIKEYHERE")

response = response.parse(:json)

part_of_speech = response[1]["partOfSpeech"]
definition = response[1]["text"]

puts "#{word.capitalize} is a #{part_of_speech} and means #{definition.downcase}"
