class DashboardController < ApplicationController
  def line_view
  	@congestions = Congestion.all

  end
  def map_view
  end
end
