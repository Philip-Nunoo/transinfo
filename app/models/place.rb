class Place < ActiveRecord::Base
	has_many :locations, as: :imageable
end
