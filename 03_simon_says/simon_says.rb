def echo(call)
	return call
end

def shout(call)
	return call.upcase
end

def repeat(call, number = 2)
	([call] * number).join(" ")
end

def start_of_word(word, letterNumber)
	return word[0..letterNumber-1]
end

def first_word(word)
	return word.split.first
end

def titleize(s)
	words = s.split.map do |word|
   	if %w(the and over).include?(word)
     		 word
   	else
     		 word.capitalize
    	end
 	end
 	words.first.capitalize!
	words.join(" ")
end
