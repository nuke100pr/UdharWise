class AddCurrencyToExpense < ActiveRecord::Migration[8.1]
  def change
    add_column :expenses, :currency_id, :bigint, null: false
    add_foreign_key :expenses, :currencies, column: :currency_id
  end
end
