class AddEmailToFriends < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :add_address_to_friends, :string
    add_column :friends, :email, :string
    add_column :friends, :address, :string
  end
end
