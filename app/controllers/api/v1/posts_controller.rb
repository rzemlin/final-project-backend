class Api::V1::PostsController < ApplicationController
  def index
    posts = Post.all
    render json: PostSerializer.new(posts), :except => [:created_at, :updated_at]
  end
end
