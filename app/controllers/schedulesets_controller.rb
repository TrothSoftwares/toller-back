class SchedulesetsController < ApplicationController
  before_action :set_scheduleset, only: [:show, :update, :destroy]

  # GET /schedulesets
  def index
    @schedulesets = Scheduleset.all

    render json: @schedulesets
  end

  # GET /schedulesets/1
  def show
    render json: @scheduleset
  end

  # POST /schedulesets
  def create
    @scheduleset = Scheduleset.new(scheduleset_params)

    if @scheduleset.save
      render json: @scheduleset, status: :created, location: @scheduleset
    else
      render json: @scheduleset.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /schedulesets/1
  def update
    if @scheduleset.update(scheduleset_params)
      render json: @scheduleset
    else
      render json: @scheduleset.errors, status: :unprocessable_entity
    end
  end

  # DELETE /schedulesets/1
  def destroy
    @scheduleset.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scheduleset
      @scheduleset = Scheduleset.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def scheduleset_params
      params.fetch(:scheduleset, {})
    end
end
