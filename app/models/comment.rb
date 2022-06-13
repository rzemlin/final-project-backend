class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :post, dependant: destroy
end
