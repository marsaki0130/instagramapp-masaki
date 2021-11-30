class ProfilesController < ApplicationController
    before_action :authenticate_user!

    def show
        @user = current_user
        @profile = current_user.profile
    end


    def update
    end

    private
    def profile_params
      params.require(:profile).permit(
          :avatar
      )
    end
end