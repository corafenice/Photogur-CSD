class Comment < ApplicationRecord
  belongs_to :picture 
end




# class Comment < ApplicationRecord
# <<<<<<< merge-with-pk
#   belongs_to :picture 
# # =======
# #   belongs_to :user
# #   belongs_to :picture
# # >>>>>>> master
# end
