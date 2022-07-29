class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :delete, :update, :show]

    def index
        @users = User.all
    end

    def show
    end

    def edit
    end

    def update
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "Welcome #{@user.username} to the Alpha Blog, you have successfully signup"
            redirect_to root_path
        else
            render 'new'
        end
    end

    def delete
        @user.destroy
    end

    private
    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end