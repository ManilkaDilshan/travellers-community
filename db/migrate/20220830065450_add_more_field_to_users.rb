class AddMoreFieldToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :usertype, :boolean, :default => 0
  end
end
