class CreateAccount < ActiveRecord::Migration
  def up
    create_table :accounts do |t|
      t.string :name
      t.date :member_since
      t.string :level
      t.text :description
      
      t.timestamps
    end
  end

  def down
    drop_table :accounts
  end
end
