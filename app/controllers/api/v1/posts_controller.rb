class Api::V1::PostsController < ApplicationController
  before_action :set_post, only: [:update, :destroy]

  def index
    posts = Post.all
    render json: PostSerializer.new(posts), :except => [:created_at, :updated_at]
  end
end

def create
  post = logged_in_user.posts.build(post_params)
  if post.save
    render json: post, status: :created, location: post
  else
    render json: post.errors, status: :unprocessable_entity
  end
end

def show
  post = Post.find(params[:id])
  render json: post, serializer: PostSerializer
end

def update
  if post.update(post_params)
    render json: post
  else
    render json: post.errors, status: :unprocessable_entity
  end
end

def destroy
  post.destroy
end

private

def set_post
  post = Post.find(params[:id])
end

def post_params
  params.permit(:image, :likes, :caption)
end
