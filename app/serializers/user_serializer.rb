class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :email, :bio, :photo
  has_many :posts
end
