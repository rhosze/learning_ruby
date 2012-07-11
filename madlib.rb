# Write a program which asks the user to enter a series of nouns, verbs, adjectives, adverbs, plural nouns, past tense verbs, etc., and then generates a paragraph which is syntactically correct but semantically ridiculous.

puts "Insert noun:"
n = gets.strip

puts "Insert proper noun:"
pn = gets.strip

puts "Insert plural noun:"
pln = gets.strip

puts "Insert present tense verb:"
v = gets.strip

puts "Insert past tense verb:"
pv = gets.strip

puts "Insert past tense verb:"
pv2 = gets.strip

puts "Insert past tense verb:"
pv3 = gets.strip

puts "Insert adverb:"
av = gets.strip

puts "Insert adjective:"
adj = gets.strip

puts "Insert adjective:"
adj2 = gets.strip

puts "Insert adjective:"
adj3 = gets.strip


def determiner(word)
  if word.start_with?("a", "e", "i", "o", "u")
    "an"
  else 
    "a"
  end
end

puts "Once upon a time, there was #{determiner(n)} #{n}"
puts "that loved to punt on the waters of #{pn}."
puts "One day, he decided to #{v} while he punted"
puts "and as a result, he #{av} #{pv}."
puts ""
puts "A group of #{adj} #{pln} witnessed the scene and #{pv2}."
puts "One of the #{adj2} #{pln} leaped to action"
puts "and #{pv3} in response to the event."
puts ""
puts "Having experienced #{determiner(adj3)} #{adj3} situation,"
puts "the #{n} was grateful for the actions of the #{pln}"
puts "and confessed that he had professed his love"
puts "for Justin Bieber Hou in the midst of danger."
puts "The end."
