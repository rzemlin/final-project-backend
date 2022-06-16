class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :image, :caption, :likes, :user_id, :user
  has_many :comments
end
