class User < ApplicationRecord
  has_secure_password
  has_many :pictures
end



# class User < ApplicationRecord
# <<<<<<< merge-with-pk
#   has_secure_password
#   has_many :pictures
# =======
#   has_many :pictures
  
# >>>>>>> master
# end
