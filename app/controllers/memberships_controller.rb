class MembershipsController < ApplicationController 

    def create
        membership = Membership.create!(member_params)
        render json: membership, status: :created
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    private

    def member_params
        params.permit(:gym_id, :client_id, :charge)
    end
end
