class Customer < ApplicationRecord
    has_many :credit_cards
    has_many :banks, through: :credit_cards

    def to_s
        self.name + " " + self.age
    end

end
