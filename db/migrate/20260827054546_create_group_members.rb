class CreateGroupMembers < ActiveRecord::Migration[8.1]
  def change
    create_table :group_members do |t|
      t.references :user , null: false, foreign_key: true
      t.references :group , null: false, foreign_key: true
      t.string :status, null:false, default: "active"

      t.timestamps
    end

    add_index :group_members, [:user_id, :group_id], unique: false
  end
end
