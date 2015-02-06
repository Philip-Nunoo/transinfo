class CongestionsController < ApplicationController
  before_action :set_congestion, only: [:show, :edit, :update, :destroy]

  # GET /congestions
  # GET /congestions.json
  def index
    @congestions = Congestion.all
  end

  # GET /congestions/1
  # GET /congestions/1.json
  def show
  end

  # GET /congestions/new
  def new
    @congestion = Congestion.new
  end

  # GET /congestions/1/edit
  def edit
  end

  # POST /congestions
  # POST /congestions.json
  def create
    @congestion = Congestion.new(congestion_params)

    respond_to do |format|
      if @congestion.save
        format.html { redirect_to @congestion, notice: 'Congestion was successfully created.' }
        format.json { render :show, status: :created, location: @congestion }
      else
        format.html { render :new }
        format.json { render json: @congestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /congestions/1
  # PATCH/PUT /congestions/1.json
  def update
    respond_to do |format|
      if @congestion.update(congestion_params)
        format.html { redirect_to @congestion, notice: 'Congestion was successfully updated.' }
        format.json { render :show, status: :ok, location: @congestion }
      else
        format.html { render :edit }
        format.json { render json: @congestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /congestions/1
  # DELETE /congestions/1.json
  def destroy
    @congestion.destroy
    respond_to do |format|
      format.html { redirect_to congestions_url, notice: 'Congestion was successfully destroyed.' }
      format.json { head :no_content }
    end
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
