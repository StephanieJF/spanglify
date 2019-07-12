require "spanglify/version"

module Spanglify
  def self.process(str)
		#commonly interchanged English to Spanish words and phrases
		to_swap = {
			"are you" => "estás",
			"very" => "muy",
			"but" => "pero",
			"i like" => "me gusta",
			"party" => "fiesta",
			"with" => "con"
		}

		to_swap.each do |key, value|
		#create a capitalized versions of the key and values
			capitalized_key = key.capitalize
			capitalized_value = value.capitalize

			upcase_key = key.upcase
			upcase_value = value.upcase

			if str.include? "#{key}" #if the string contains the lowercase version of the English word(s)
				str.gsub!(key, value) #swap out for the lowercase Spanish version of the word(s)
			elsif str.include? "#{upcase_key}" #if the string contains the capitalized version of the English word(s)
				str.gsub!(upcase_key, upcase_value) #swap out for the capitalized version of the Spanish word(s)
			elsif str.include? "#{capitalized_key}" #if the string contains the uppercase version of the English word(s)
				str.gsub!(capitalized_key, capitalized_value) #swap out for the uppercase version of the Spanish word(s)
			end
		end
		str #return the spanglified version of the string
	end
end
