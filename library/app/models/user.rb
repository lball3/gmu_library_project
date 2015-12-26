class User < ActiveRecord::Base
   
    
    has_secure_password
   
    
    has_many :reservations, dependent: :destroy
    has_many :books, through: :reservations
end
