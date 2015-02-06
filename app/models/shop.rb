class Shop < ActiveRecord::Base
	# after_save :imageable
	# before_save :set_imageable

	# private

	# def set_imageable
	# 	location = Location.new longitude: self.longitude, 
	# 					latitude: self.latitude

	# 	if location.save
	# 		return true
	# 	end
	# 	return false
	# end

	# def imageable
	# 	self.location.imageable = self
	# end
end
