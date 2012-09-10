randnum = Random.rand(100)

puts "I'm thinking of a number between 1 and 100..."
puts "Your guess?" 

guess = gets.to_i

while guess != randnum do
  if guess > randnum
    puts "It's lower."
    puts "Your guess?"
    guess = gets.to_i
  else
    puts "It's higher."
    puts "Your guess?"
    guess = gets.to_i
  end
end

puts "You guessed it!" 
puts "Play again?"

replay = gets

