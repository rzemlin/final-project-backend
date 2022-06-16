class PostSerializer
  include fastJsonapi::ObjectSerializer
  attributes :id, :comment, :user_id, :user
end
