puts "This program tells you how many days it will be until your next birthday."

puts "Please enter today's date:"

puts "What is the month (1-12)?"
td_mo = gets.strip.to_i

puts "What is the day (1-31)?"
td_dy = gets.strip.to_i

# today absolute (td_ab) is days in this month + days in every month before that

def absolute_day(month, day)

  mo = {
    1 => 31,
    2 => 28,
    3 => 31,
    4 => 30,
    5 => 31,
    6 => 30,
    7 => 31,
    8 => 31,
    9 => 30,
    10 => 31,
    11 => 30,
    12 => 31,
  }

  # hash v. loop of arrays, computation v. memory tradeoff

  total_days = 0


  (1...month).each do |i| #1...month is (month-1)
    total_days += mo[i]
  end

  total_days + day

end 

absolute_tday =  absolute_day(td_mo, td_dy)

puts "#{td_mo}/#{td_dy} is day # #{absolute_tday} of 365"


puts "Please enter your birthday:"

puts "What is the month (1-12)?"
bd_mo = gets.strip.to_i

puts "What is the day (1-31)?"
bd_dy = gets.strip.to_i

absolute_bday =  absolute_day(bd_mo, bd_dy)

puts "#{bd_mo}/#{bd_dy} is day # #{absolute_bday} of 365"


def next_bday(abs_tday, abs_bday)
  if abs_tday == abs_bday
    puts "Happy birthday!"
  elsif abs_bday - abs_tday == 1
    puts "Wow, your birthday is tomorrow!"
  elsif abs_bday > abs_tday
    puts "Your next birthday is in #{abs_bday - abs_tday} days."
  else
    puts "Your next birthday is in #{365 - (abs_tday - abs_bday)} days."
  end
end

next_bday(absolute_tday, absolute_bday)






