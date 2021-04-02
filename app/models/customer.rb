class Customer < ApplicationRecord
    has_secure_password

    has_many :reservations
    has_many :hosts, through: :reservations
end
