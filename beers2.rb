def beer(x)
 if x == 2
   puts "#{x} bottles of beer on the wall"
   puts "#{x} bottles of beer"
   puts "you take one down and pass it around"
   puts "#{x-1} bottle of beer on the wall"
   puts ''
 elsif x != 1
   puts "#{x} bottles of beer on the wall"
   puts "#{x} bottles of beer"
   puts "you take one down and pass it around"
   puts "#{x-1} bottles of beer on the wall"
   puts ''
 else
   puts "#{x} bottle of beer on the wall"
   puts "#{x} bottle of beer"
   puts "you take one down and pass it around"
   puts "#{x-1} bottles of beer on the wall"
 end
end

(1..99).each do |i|
 beer(100 - i)
end
