class Bank < ApplicationRecord
    has_many :credit_cards
    has_many :customers, though: :credit_card
end
