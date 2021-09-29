class MeasurementsController < ApplicationController

  def index
    @measurements = Measurement.all

    render json: @measurements
  end

  def show
    render json: @measurement
  end

  def create

    measurement = Measurement.find(measurement_params['id'])
    transaction = Transaction.new(transaction_params.merge(measurement_id: measurement.id))

    if transaction.save
      render json: transaction.as_json, status: :created
    else
      render json: @measurement.errors, status: :unprocessable_entity
    end
  end


  private

  def measurement_params
    params.require(:measurement).permit(:id)
  end

  def transaction_params
    params.require(:transaction).permit(:data)
  end

end
