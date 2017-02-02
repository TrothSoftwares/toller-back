class ExamdaysController < ApplicationController
  before_action :set_examday, only: [:show, :update, :destroy]

  # GET /examdays
  def index
    @examdays = Examday.all

    render json: @examdays
  end

  # GET /examdays/1
  def show
    render json: @examday
  end

  # POST /examdays
  def create
    @examday = Examday.new(examday_params)

    if @examday.save
      render json: @examday, status: :created, location: @examday
    else
      render json: @examday.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /examdays/1
  def update
    if @examday.update(examday_params)
      render json: @examday
    else
      render json: @examday.errors, status: :unprocessable_entity
    end
  end

  # DELETE /examdays/1
  def destroy
    @examday.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examday
      @examday = Examday.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def examday_params
      params.fetch(:examday, {})
    end
end
