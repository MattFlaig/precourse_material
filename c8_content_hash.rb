title = 'Table of Contents'
chapters = {'Getting Started' => 1,
			'Numbers' => 9,
			'Letters'=> 13}

puts ''
puts title.center(60)
puts ''

chap_num = 1

chapters.each do |key, value|
	name = key
	page = value

	beginning = 'Chapter ' + chap_num.to_s + ': ' + name
	ending = 'page ' + page.to_s

	puts beginning.ljust(40) + ending.rjust(20)
	chap_num = chap_num + 1
end