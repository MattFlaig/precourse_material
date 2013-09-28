def number_roman()

	puts "Please type in a number between 1 and 1000," 
	puts "and I will transfer it into roman numerals!"

	number = gets.chomp.to_i

	while number <= 0
		puts "Okay, let's try this again, but this time with a valid number!"
		number = gets.chomp.to_i
	end

	specials = {49 => 'IL',99 => 'IC',490 => 'XD',499 => 'ID',990 => 'XM',999 => 'IM'}			
	romans_1 = {1 => 'I',2 => 'II',3 => 'III',4 => 'IV',5 => 'V',6 => 'VI',7 => 'VII',8 => 'VIII',9 => 'IX'}
	romans_10 = {10 => 'X',20 => 'XX',30 => 'XXX',40 => 'XL',50 => 'L',60 => 'LX',70 => 'LXX',80 => 'LXXX',90 => 'XC'}		
	romans_100 = {100 => 'C',200 => 'CC',300 => 'CCC',400 => 'CD',500 => 'D', 600 => 'DC',700 => 'DCC',800 => 'DCCC',900 => 'CM',1000=> 'M'}	

	num_array_100 = []
	num_array_10 = []
	num_array_1 = []
	num_array_sp = []

	hunds = number / 100
	tens =  (number - (hunds * 100)) / 10
	ones = (number - (hunds * 100)) % 10

	specials.each do|key, value|
		if number == key
			num_array_sp.push(value)
		elsif key + ones == number && number != 999 && number != 499 
			num_array_sp.push(value)
		elsif (hunds * 100) + key == number && number != 999 && number != 499 
			num_array_sp.push(value)
		end
	end

	romans_100.each do |key,value|
		if hunds * 100 == key
			num_array_100.push(value)
		end
	end

	romans_10.each do |key,value|
		if tens * 10 == key
			num_array_10.push(value)
		end
	end
	
	romans_1.each do |key,value|
		if ones == key
			num_array_1.push(value)
		end
	end
	
	puts "And here it is in roman numerals: "
# These conditions are necessary to print out the right value
	if num_array_sp.include?('IL') || num_array_sp.include?('IC') 
		puts num_array_100 + num_array_sp
	elsif num_array_sp.include?('XD') || num_array_sp.include?('XM') 
		puts num_array_sp + num_array_1
	elsif num_array_sp.include?('ID') 
		puts 'ID'
	elsif num_array_sp.include?('IM') 
		puts 'IM'
	else
		puts num_array_100 + num_array_10 + num_array_1
	end
end
number_roman()