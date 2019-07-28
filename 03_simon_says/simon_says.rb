def echo(phrase)
	phrase
end

def shout(phrase)
	phrase.upcase
end

def repeat(phrase, count = 2)
	repeated = phrase

	(count - 1).times do
		repeated = repeated + " #{phrase}"
	end

	return repeated
end

def start_of_word(word, count)
	word[0...count]
end

def first_word(phrase)
	phrase.split(" ")[0]
end

def titleize(phrase)
	capWords = phrase.split.map.with_index do |word, index|
		word.length > 4 || index == 0 ? word.capitalize : word
	end
	
	capWords.join(" ")
end
