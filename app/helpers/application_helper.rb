module ApplicationHelper
	def level (level_number)
		if(level_number.to_int == 1)
			return "one"
		elsif (level_number.to_int == 2)
			return "two"
		elsif (level_number.to_int == 3)
			return "three"
		else
			return ""
		end	
	end

	def translate_level (level_number)
		if(level_number.to_int == 1)
			return "Light Traffic"
		elsif (level_number.to_int == 2)
			return "Moderate Traffic"
		elsif (level_number.to_int == 3)
			return "High Traffic"
		else
			return ""
		end	
	end
end
