class Host < ApplicationRecord
    has_secure_password

    has_many :reservations
    has_many :customers, through: :reservations
end
