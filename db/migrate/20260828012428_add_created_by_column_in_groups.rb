class AddCreatedByColumnInGroups < ActiveRecord::Migration[8.1]
  def change
    add_column :groups, :created_by_id, :bigint, null: false
    add_foreign_key :groups, :users, column: :created_by_id
  end
end
