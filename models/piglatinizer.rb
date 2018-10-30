class PigLatinizer
	def word_piglatinize(word)
		match = word.match(/[aeiou]/i)
		if match
			before_word = match.pre_match
			if before_word.length == 0
				word += 'way'
			else
				word = match.to_s + match.post_match + before_word + 'ay'
			end
		else
			word += 'way'
		end
		word
	end

	def piglatinize(phrase)
		phrase_arr = phrase.split(' ')
		if phrase_arr.length > 1
			new_phrase = ''
			phrase_arr.map {|word|
				new_phrase += word_piglatinize(word) + ' '
			}
			return new_phrase.strip
		else
			return word_piglatinize(phrase)
		end

	end
end