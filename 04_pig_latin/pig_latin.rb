def translate(s)
	if s.match(" ")
		splitWord = s.split(' ')
		wordF = ''
		splitWord.each do |word|
			wordF << translate(word) + " "
		end
		s = wordF[0...-1] # Cutting the last whitespace
		return s
	end

	if s.start_with?('a', 'e', 'i', 'o', 'u')
		s << "ay"
	else if s.start_with?('qu')
		s = "#{s[2..-1]}#{s[0..1]}"
		translate(s)
	else
		s = "#{s[1..-1]}#{s[0]}"
		translate(s)
	end
	end
end
