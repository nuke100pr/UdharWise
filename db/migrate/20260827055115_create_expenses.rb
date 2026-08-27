class CreateExpenses < ActiveRecord::Migration[8.1]
  def change
    create_table :expenses do |t|
      t.integer :amount, null: false

      t.references :created_by, null: false, foreign_key: { to_table: :users }
      t.references :payer, null: false, foreign_key: { to_table: :users }
      t.references :group, null: false, foreign_key: true

      t.string :description
      t.string :name , null: false
      t.string :status, null: false, default: "active"


      t.timestamps
    end
  end
end
