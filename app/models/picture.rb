class Picture < ApplicationRecord
  belongs_to :user
  has_many :comments
end





# class Picture < ApplicationRecord
# <<<<<<< merge-with-pk
#   belongs_to :user
# =======
#   has_many :comments
#   belongs_to :user

# >>>>>>> master
# end
