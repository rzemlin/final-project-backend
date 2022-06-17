class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:update, :destroy]

  def index
    users = User.all
    render json: users, each_serializer: UserSerializer
  end

  def show
    user = User.find(params[:id])
    if user === logged_in_user
      render json: user
    else
      render json: { error: user.errors.full_messages }
    end
  end

  def create
    user = User.new(user_params)
    if user.save
      render_user_token(user)
    else
      render json: { error: user.errors.full_messages }, status: 403
    end
  end

  def update
    if user.update(user_params)
      render json: user
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    user.destroy
  end

  private

  def set_user
    user = User.find(params[:id])
  end

  def user_params
    params.permit(:username, :email, :password, :bio, :photo)
  end
end
