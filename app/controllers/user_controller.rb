class UserController < ApplicationController
  def index
  end

  def show
  end

  def create
    @user = User.new(user_params(:first_name, :last_name, :username, :password))
    # byebug
    if @user.save
      render json: {user: @user}, status: :ok
    else
      render json: {error: "problems"}, status: :unprocessable_entity
    end
  end

  def udpdate
  end

  def destroy
  end

  private

  def user_params(*args)
    params.require(:user).permit(*args)
  end


end
