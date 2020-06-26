class Bank < ApplicationRecord
    has_many :credit_cards
    has_many :customers, through: :credit_cards

    def info
        self.name + " " + self.city
    end
    
end
