class User < ApplicationRecord
    has_secure_password

    has_many :sessions

    
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :password, length: {minimum: 8}

end
