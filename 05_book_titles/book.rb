class Book

attr_reader :title

def title=(title)
	words = title.split(" ")
	words = [words[0].capitalize] +
      		words[1..-1].map do |word|
        	little_words = %w{a an and the in of}
        	if little_words.include? word
          		word
       		else
         		word.capitalize
        	end
       end
       @title = words.join(" ")
end

end
