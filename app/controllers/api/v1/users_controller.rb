class Api::V1::UsersController < ApplicationController
  def index
    users = Post.all
    render json: UserSerializer.new(users), :except => [:created_at, :updated_at, :password_digest]
  end
end
