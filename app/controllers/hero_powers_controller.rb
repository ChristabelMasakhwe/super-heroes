class HeroPowersController < ApplicationController
    def create
        hero_power = HeroPower.create!(hero_power_params)
        render json: hero_power, status: :created
    rescue ActiveRecord::RecordInvalid => e
        render json: {error: e.record.errors.full_messages}, status: :unprocessable_entity
    end

    private
    def hero_power_params
        params.permit(:strength, :hero_id, :power_id)
    end
end
