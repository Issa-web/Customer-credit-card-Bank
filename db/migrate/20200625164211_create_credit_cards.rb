class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.string :card_name
      t.integer :customer_id
      t.integer :bank_id

      t.timestamps
    end
  end
end
