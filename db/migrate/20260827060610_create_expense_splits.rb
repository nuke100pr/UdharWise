class CreateExpenseSplits < ActiveRecord::Migration[8.1]
  def change
    create_table :expense_splits do |t|
      
      t.references :expense , null: false, foreign_key: true
      t.references :user , null: false, foreign_key: true
      t.integer :amount, null: false
      t.string :status, null: false, default: "active"

      t.timestamps
    end

    add_index :expense_splits, [:expense_id, :user_id], unique: false
  end
end
