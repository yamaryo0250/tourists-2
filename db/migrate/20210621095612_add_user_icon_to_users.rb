class AddUserIconToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user_icon, :string
  end
end
