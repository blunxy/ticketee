class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.integer :user_id
      t.integer :thing_id
      t.string :action

      t.timestamps
    end
  end
end
