puts "This program processes a file of answers to the"
puts "Keirsey Temperament Sorter.  It converts the"
puts "various A and B answers for each person into"
puts "a sequence of B-percentages and then into a"
puts "four-letter personality type."

input = open(ARGV.first).readlines

# identify name lines and answer lines
# sort questions into arrays for each dimension:

ie = [1, 8, 15, 22, 29, 36, 43, 50, 57, 64]
sn = [2, 3, 9, 10, 16, 17, 23, 24, 30, 31, 37, 38, 44, 45, 51, 52, 58, 59, 65, 66]
tf = [4, 5, 11, 12, 18, 19, 25, 26, 32, 33, 39, 40, 46, 47, 53, 54, 60, 61, 67, 68]
jp = [6, 7, 13, 14, 20, 21, 27, 28, 34, 35, 41, 42, 48, 49, 55, 56, 62, 63, 69, 70]

betty_profile = input[1]


def dim_group(dim_array, profile)
  dim =[]
  dim_array.each do |question|
    dim << profile[question-1]
  end
  dim
end

betty_ie = dim_group(ie, betty_profile)
betty_sn = dim_group(sn, betty_profile)
betty_tf = dim_group(tf, betty_profile)
betty_jp = dim_group(jp, betty_profile)


def percentage_b(dimension)
  b_count = dimension.count "B"
  dash_count = dimension.count "-"
  tot_count = dimension.count
  b_count.to_f / (tot_count.to_f - dash_count.to_f) * 100
end

puts "#{input[0].strip}:[#{percentage_b(betty_ie)}, #{percentage_b(betty_sn)}, #{percentage_b(betty_tf)}, #{percentage_b(betty_jp)}]"




  