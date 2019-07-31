def translate(phrase)
	words = phrase.split(" ")

	words.map! do |word|
		if(word =~ /^[aeiou]/i)
			word << 'ay'
		elsif(word =~ /^[^aeiou]qu{1}/i || word =~ /^[^aeiou]{3}/i)
			word[3..word.length] << word[0..2] << 'ay'
		elsif(word =~ /^qu{1}/i || word =~ /^[^aeiou]{2}/i)
			word[2..word.length] << word[0..1] << 'ay'
		else
			word[1..word.length] << word[0] << 'ay'
		end
	end

	words.join(" ");
end
