class Market < ApplicationRecord
    has_many :managers
    has_many :workplace_accounts, through: :manager
end
