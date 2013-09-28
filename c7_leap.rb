puts 'Please type in a starting year!'
start_y = gets.chomp.to_i

puts 'And now please type in an end year!'
end_y = gets.chomp.to_i

delta = end_y - start_y
years = delta / 4

if start_y % 4 == 0
	years = years +1
end

puts 'There are ' + years.to_s + ' leap years in the given time period!' 
puts 'These are the following:'

year = start_y
while year <= end_y
		if year % 4 == 0
			if year%100 != 0 || year % 400 == 0
				puts year
			end
		end
		year = year + 1
end

