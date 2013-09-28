puts 'Give me some words, and I will be a nice guy and sort them:'
words = []

while true
	one_word = gets.chomp
	if one_word == ''
		break
	end
	words.push(one_word)
end
puts 'Here are your sorted words:'
puts words.sort