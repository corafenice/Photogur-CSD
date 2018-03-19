class User < ApplicationRecord
<<<<<<< HEAD
  has_many :pictures
  
=======
  has_secure_password
  has_many :pictures
>>>>>>> merge-with-pk
end
