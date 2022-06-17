class Api::V1::CommentsController < ApplicationController
  def create
    comment = logged_in_user.comments.create!(comment_params)
    render json: comment
  end

  private

  def comment_params
    params.permit(:text, :user_id, :post_id)
  end
end
