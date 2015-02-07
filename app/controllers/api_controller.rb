class ApiController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def create
  	@congestion = Congestion.new congestion_params
  	respond_to do |format|
      if @congestion.save
        format.json { render :show, status: :created, location: @congestion }
      else
        format.json { render json: @congestion.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_congestion
    	@congestion = Congestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def congestion_params
    	params.permit(:place, :longitude, :latitude, :out_level, :in_level)
    end
end
