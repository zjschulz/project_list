class User < ApplicationRecord
    has_secure_password
    validates_presence_of :user_name, :first_name, :last_name, :email, :password
    validates_uniqueness_of :user_name, :email
end
