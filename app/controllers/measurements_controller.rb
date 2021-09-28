class MeasurementsController < ApplicationController
  # before_action :set_measurement, only: [:show, :update, :destroy]

  # GET /measurements
  def index
    @measurements = Measurement.all

    render json: @measurements.to_json
  end

  # GET /measurements/1
  def show
    @measurement = Measurement.find(params[:id])
    @transactions = Transaction.where(measurement: @measurement)

    render json: @measurement.to_json(include: { transactions: { only: %i[data created_at] } })
  end
  

  # POST /measurements
  def create
    measurement = Measurement.find(measurement_params['id'])
     transaction = Transaction.new(transaction_params.merge(measurement_id: measurement.id))
    if transaction.save
      render json: transaction.as_json, status: :created
    else
      render json: transaction.errors, status: :unprocessable_entity
    end
  end

  # # PATCH/PUT /measurements/1
  # def update
  #   if @measurement.update(measurement_params)
  #     render json: @measurement
  #   else
  #     render json: @measurement.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /measurements/1
  # def destroy
  #   @measurement.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_measurement
    #   @measurement = Measurement.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def measurement_params
      params.require(:measurement).permit(:id)
    end
    def transaction_params
      params.require(:transaction).permit(:data)
    end
end
