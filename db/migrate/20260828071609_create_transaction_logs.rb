class CreateTransactionLogs < ActiveRecord::Migration[8.1]
  def change
    create_table :transaction_logs do |t|
      t.references :user , null: false, foreign_key: true
      t.references :group , null: false, foreign_key: true
      t.references :currency , null: false, foreign_key: true
      t.integer :amount, null: false
      t.string :transaction_type, null: false
      t.timestamp :occurred_at, null: false
      t.timestamp :created_at, null: false 
    end
  end
end
