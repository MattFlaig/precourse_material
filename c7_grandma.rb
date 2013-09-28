puts 'Let us talk to grandma!'
counter = 0	

while true
statement = gets.chomp


	if statement == statement.upcase 
		puts 'NO, NOT SINCE ' + (1930 + (rand(20))).to_s + '!'
	else
		puts 'HUH?! SPEAK UP, SONNY!'
	end

	if statement == 'BYE'
		counter = counter + 1
	else
		counter = 0
	end	
			
	if counter >= 3
		puts 'SEE YOU, HONEY!'
		break
	end			
	
end