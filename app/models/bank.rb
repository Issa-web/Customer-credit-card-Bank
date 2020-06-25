class Bank < ApplicationRecord
    has_many :credit_cards
    has_many :customers, through: :credit_card
end
