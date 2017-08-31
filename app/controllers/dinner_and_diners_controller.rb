class DinnerAndDinersController < ApplicationController
  before_action :set_dinner_and_diner, only: [:show, :update, :destroy]

  # GET /dinner_and_diners
  def index
    @dinner_and_diners = DinnerAndDiner.all

    render json: @dinner_and_diners
  end

  # GET /dinner_and_diners/1
  def show
    render json: @dinner_and_diner
  end

  # POST /dinner_and_diners
  def create
    @dinner_and_diner = DinnerAndDiner.new(dinner_and_diner_params)

    if @dinner_and_diner.save
      render json: @dinner_and_diner, status: :created, location: @dinner_and_diner
    else
      render json: @dinner_and_diner.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dinner_and_diners/1
  def update
    if @dinner_and_diner.update(dinner_and_diner_params)
      render json: @dinner_and_diner
    else
      render json: @dinner_and_diner.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dinner_and_diners/1
  def destroy
    @dinner_and_diner.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dinner_and_diner
      @dinner_and_diner = DinnerAndDiner.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dinner_and_diner_params
      params.require(:dinner_and_diner).permit(:vegetables_id, :pests_id)
    end
end
