class Comment < ApplicationRecord
  belongs_to :picture
  has_many :users
end
