class User < ApplicationRecord
    validates :user_name ,presence: true,uniqueness: true,length: {maximum: 20,minimum:3}
    validates :password ,presence: true,length: {maximum: 20,minimum:3}
    has_secure_password
end
