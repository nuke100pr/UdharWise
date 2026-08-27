class CreateGroups < ActiveRecord::Migration[8.1]
  def change
    create_table :groups do |t|
      t.string :name,null:false
      t.string :description
      t.string :image_uri
      t.string :status, null:false, default: "active"
      t.timestamps
    end
  end
end
