class Customer < ApplicationRecord
    has_many :credit_cards
    has_many :banks, through: :credit_card
end
