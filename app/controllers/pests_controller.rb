class PestsController < ApplicationController
  before_action :set_pest, only: [:show, :update, :destroy]

  # GET /pests
  def index
    @pests = Pest.all

    render json: @pests
  end

  # GET /pests/1
  def show
    render json: @pest
  end

  # POST /pests
  def create
    @pest = Pest.new(pest_params)

    if @pest.save
      render json: @pest, status: :created, location: @pest
    else
      render json: @pest.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pests/1
  def update
    if @pest.update(pest_params)
      render json: @pest
    else
      render json: @pest.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pests/1
  def destroy
    @pest.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pest
      @pest = Pest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pest_params
      params.require(:pest).permit(:name, :image, :description)
    end
end
