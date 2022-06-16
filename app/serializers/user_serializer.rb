class UserSerializer
  include fastJsonapi::ObjectSerializer
  attributes :id, :username, :email, :bio, :photo
  has_many :posts
end
