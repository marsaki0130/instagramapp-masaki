class ProfilesController < ApplicationController
    before_action :authenticate_user!

    def show
        @user = current_user
        @profile = current_user.profile
    end


    def update
      @profile = current_user.prepare_profile
      @profile.id = current_user.id
      @profile.assign_attributes(profile_params)
      if @profile.save
        redirect_to profile_path, notice:'更新できました'
      else
        flash.now[:error] = '更新に失敗しました'
        render :show
      end
    end

    private
    def profile_params
      params.require(:profile).permit(
          :avatar
      )
    end
end