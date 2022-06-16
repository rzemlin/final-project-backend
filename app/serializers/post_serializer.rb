class PostSerializer
  include fastJsonapi::ObjectSerializer
  attributes :id, :image, :caption, :likes, :user_id, :user
  has_many :comments
end
