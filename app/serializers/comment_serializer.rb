class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :comment, :username
  belongs_to :post
end
