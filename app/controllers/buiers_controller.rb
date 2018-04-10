class BuiersController < ApplicationController
  before_action :set_buier, only: [:show, :update, :destroy]

  # GET /buiers
  def index
    @buiers = Buier.all

    render json: @buiers
  end

  # GET /buiers/1
  def show
    render json: @buier
  end

  # POST /buiers
  def create
    @buier = Buier.new(buier_params)

    if @buier.save
      render json: @buier, status: :created, location: @buier
    else
      render json: @buier.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /buiers/1
  def update
    if @buier.update(buier_params)
      render json: @buier
    else
      render json: @buier.errors, status: :unprocessable_entity
    end
  end

  # DELETE /buiers/1
  def destroy
    @buier.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buier
      @buier = Buier.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def buier_params
      params.require(:buier).permit(:name)
    end
end
