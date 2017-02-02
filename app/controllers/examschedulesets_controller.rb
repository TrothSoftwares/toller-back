class ExamschedulesetsController < ApplicationController
  before_action :set_examscheduleset, only: [:show, :update, :destroy]

  # GET /examschedulesets
  def index
    @examschedulesets = Examscheduleset.all

    render json: @examschedulesets
  end

  # GET /examschedulesets/1
  def show
    render json: @examscheduleset
  end

  # POST /examschedulesets
  def create
    @examscheduleset = Examscheduleset.new(examscheduleset_params)

    if @examscheduleset.save
      render json: @examscheduleset, status: :created, location: @examscheduleset
    else
      render json: @examscheduleset.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /examschedulesets/1
  def update
    if @examscheduleset.update(examscheduleset_params)
      render json: @examscheduleset
    else
      render json: @examscheduleset.errors, status: :unprocessable_entity
    end
  end

  # DELETE /examschedulesets/1
  def destroy
    @examscheduleset.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examscheduleset
      @examscheduleset = Examscheduleset.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def examscheduleset_params
      params.fetch(:examscheduleset, {})
    end
end
