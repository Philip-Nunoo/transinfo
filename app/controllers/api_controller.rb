class ApiController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def create
  	Congestion.create place: place[:name], longitude: place[:lon], 
  	latitude: place[:lat], out_level: 1, in_level: 2
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_congestion
    	@congestion = Congestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def congestion_params
    	params.require(:congestion).permit(:from, :to, :longitude, :latitude, :time, :level)
    end
end
