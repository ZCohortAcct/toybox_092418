class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  # command ran to generator migration:
  # rails g migration add_username_to_users user name:string:uniq
  
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
  end
end
