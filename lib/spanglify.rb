require "spanglify/version"

module Spanglify
  def self.process(str)
		str = str.downcase
		to_swap = {
			"are you" => "estás",
			"very" => "muy",
			"but" => "pero",
			"I like" => "me gusta",
			"party" => "fiesta",
			"with" => "con",
			"to check" => "chequear"
		}

		spanglish = to_swap.inject(str) {|str, (k, v)| str.gsub(k,v)}
		spanglish.capitalize
	end
end
