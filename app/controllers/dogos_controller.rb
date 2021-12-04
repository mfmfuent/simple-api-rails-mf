class DogosController < ApplicationController
  before_action :set_dogo, only: [:show, :update, :destroy]

  # GET /dogos
  def index
    @dogos = Dogo.all

    render json: @dogos,only: ["nombre"]
  end

  # GET /dogos/1
  def show
    render json: @dogo,only: [descripcion]
  end

  # POST /dogos
  def create
    @dogo = Dogo.new(dogo_params)

    if @dogo.save
      render json: @dogo, status: :created, location: @dogo
    else
      render json: @dogo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dogos/1
  def update
    if @dogo.update(dogo_params)
      render json: @dogo
    else
      render json: @dogo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dogos/1
  def destroy
    @dogo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dogo
      @dogo = Dogo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dogo_params
      params.require(:dogo).permit(:nombre, :descripcion)
    end
end
