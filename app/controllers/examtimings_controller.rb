class ExamtimingsController < ApplicationController
  before_action :set_examtiming, only: [:show, :update, :destroy]

  # GET /examtimings
  def index
    @examtimings = Examtiming.all

    render json: @examtimings
  end

  # GET /examtimings/1
  def show
    render json: @examtiming
  end

  # POST /examtimings
  def create
    @examtiming = Examtiming.new(examtiming_params)

    if @examtiming.save
      render json: @examtiming, status: :created, location: @examtiming
    else
      render json: @examtiming.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /examtimings/1
  def update
    if @examtiming.update(examtiming_params)
      render json: @examtiming
    else
      render json: @examtiming.errors, status: :unprocessable_entity
    end
  end

  # DELETE /examtimings/1
  def destroy
    @examtiming.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examtiming
      @examtiming = Examtiming.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def examtiming_params
      params.fetch(:examtiming, {})
    end
end
