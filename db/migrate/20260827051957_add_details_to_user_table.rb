class AddDetailsToUserTable < ActiveRecord::Migration[8.1]
  def change
    change_column_null :users, :name, false
    change_column_null :users, :email, false

    add_column :users, :status, :string, null: false, default: "active"

    add_index :users, :email, unique: true
  end
end
