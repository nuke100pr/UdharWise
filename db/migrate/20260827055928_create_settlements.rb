class CreateSettlements < ActiveRecord::Migration[8.1]
  def change
    create_table :settlements do |t|

      t.references :group , null: false, foreign_key: true
      t.references :payer , null: false, foreign_key: { to_table: :users }
      t.references :payee , null: false, foreign_key: { to_table: :users }
      t.references :currency , null: false, foreign_key: true


      t.integer :amount, null: false
      t.string :status, null: false, default: "active"

      t.timestamps
    end
  end
end
