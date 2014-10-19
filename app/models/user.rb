class User < ActiveRecord::Base
 validate :username, presence: true, uniqueness: true
 has_secure_password
 has_many :stories, dependent: :destroy
end
