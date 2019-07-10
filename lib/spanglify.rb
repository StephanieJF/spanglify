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
		#create a capitalized version of the key and values
					capitalized_key = key.capitalize
					capitalized_value = value.capitalize

					#if the string contains the lowercase version of the English word(s)
					#swap out for the lowercase Spanish version of the word(s)
					if str.include? "#{key}"
						str.gsub!(key, value)

					#else if the string contains the capitalized version of the English word(s)
					#swap out for the capitalized Spanish version of the word(s)
					elsif str.include? "#{capitalized_key}"
						str.gsub!(capitalized_key, capitalized_value)
					else
						next
					end
				end
				#return the spanglified version of the string
				return str
			end
	end
