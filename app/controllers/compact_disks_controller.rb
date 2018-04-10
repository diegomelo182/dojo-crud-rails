class CompactDisksController < ApplicationController
  before_action :set_compact_disk, only: [:show, :update, :destroy]

  # GET /compact_disks
  def index
    @compact_disks = CompactDisk.all

    render json: @compact_disks
  end

  # GET /compact_disks/1
  def show
    render json: @compact_disk
  end

  # POST /compact_disks
  def create
    @compact_disk = CompactDisk.new(compact_disk_params)

    if @compact_disk.save
      render json: @compact_disk, status: :created, location: @compact_disk
    else
      render json: @compact_disk.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /compact_disks/1
  def update
    if @compact_disk.update(compact_disk_params)
      render json: @compact_disk
    else
      render json: @compact_disk.errors, status: :unprocessable_entity
    end
  end

  # DELETE /compact_disks/1
  def destroy
    @compact_disk.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compact_disk
      @compact_disk = CompactDisk.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def compact_disk_params
      params.require(:compact_disk).permit(:name, :year)
    end
end
