class Manager < ApplicationRecord
    belongs_to :market
    has_many :workplace_accounts
end
