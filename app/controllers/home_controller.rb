class HomeController < ApplicationController
  def index
  end

  def details
  	respond_to do |format|
  		format.js
  	end
  end
end
