class AddUserToAccount < ActiveRecord::Migration
  def up
    change_table :accounts do |t|
      t.references :user
    end
  end
  def down
    change_table :accounts do |t|
      t.remove :user_id
    end
  end
end
