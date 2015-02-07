class DashboardController < ApplicationController
	def line_view
		@congestions = Congestion.all
	end

	def map_view
	end

	def path
		@client = GooglePlaces::Client.new("AIzaSyDuHqlOAxSA0QCWpRkeAeIF5THw9JP3bOI")
		if params[:current_loc]
			@from = params[:current_loc]
		end
		if params[:to_loc]
			@to = params[:to_loc]
		end
	end

	def tel_data
		@datas = TelData.all
	end
	
end
