class CreateUserEvents < ActiveRecord::Migration
  def up
    create_table :user_events do |t|
      t.integer :event_id
      t.integer :user_id
      t.datetime :event_date

      t.timestamps
    end
  end
  def down
    drop_table :user_events    
  end
end
