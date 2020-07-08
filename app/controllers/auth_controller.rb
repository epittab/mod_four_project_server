class AuthController < ApplicationController

    before_action :authorize_request

    def validate_token

        render json: @current_user.id, status: :ok
    end



end
