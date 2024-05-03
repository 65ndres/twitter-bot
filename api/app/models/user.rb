class User < ApplicationRecord
    has_secure_password
    has_many :twitter_accounts
    validates :email, presence: true
end
