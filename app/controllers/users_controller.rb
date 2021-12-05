class UsersController < ApplicationController
    def show
        @user = user.find(params[:id])
        @account = @user.account
    end

    def prepare_profile
        profile || build_profile
    end

    def create
    end

    private
    def users_params
        params.require(:users).permit(:username, :email)
    end
end