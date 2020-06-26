class Customer < ApplicationRecord
    has_many :credit_cards
    has_many :banks, through: :credit_cards

    def info
        "Customer Name: #{self.name}, Age: #{self.age.to_s}"
    end

end
