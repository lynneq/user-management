class AddAccountToUser < ActiveRecord::Migration
  def change
    change_table :users do |users|
      t.references :user
    end
  end
end
