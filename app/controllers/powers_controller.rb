class PowersController < ApplicationController
    wrap_parameters format: []
rescue_from  ActiveRecord::RecordNotFound, with: :render_not_found
    
    def index
        powers = Power.all
        render json: powers, status: :ok
    end
    def show
       power = Power.find_by(id:params[:id])
            render json: power, status: :ok, include: :heros
        end
    def update
        power = Power.find_by(id:params[:id])
            power.update!(power_params)
            render json: power
        rescue ActiveRecord::RecordInvalid =>e
        render json: {error: e.record.errors.full_messages}, status: :unprocessable_entity
    end

    private
    def power_params
        params.permit(:id, :name, :description)
    end
    def render_not_found
        render json: {error: "Record not found"}, status: :not_found
    end
end

