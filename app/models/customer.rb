class Customer < ApplicationRecord
    has_many :credit_cards
    has_many :banks, through: :credit_cards

    def info
        self.name + " " + self.age.to_s
    end

end
