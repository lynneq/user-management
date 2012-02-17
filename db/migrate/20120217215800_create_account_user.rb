class CreateAccountUser < ActiveRecord::Migration
  def up
    create_table :account_user do |t|
      t.integer :account_id
      t.integer :user_id
      
      t.timestamps
    end
  end

  def down
    drop_table :account_user
  end
end
