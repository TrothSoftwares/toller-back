class TimingsController < ApplicationController
  before_action :set_timing, only: [:show, :update, :destroy]

  # GET /timings
  def index
    @timings = Timing.all

    render json: @timings
  end

  # GET /timings/1
  def show
    render json: @timing
  end

  # POST /timings
  def create
    @timing = Timing.new(timing_params)

    if @timing.save
      render json: @timing, status: :created, location: @timing
    else
      render json: @timing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /timings/1
  def update
    if @timing.update(timing_params)
      render json: @timing
    else
      render json: @timing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /timings/1
  def destroy
    @timing.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timing
      @timing = Timing.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def timing_params
      params.fetch(:timing, {})
    end
end
