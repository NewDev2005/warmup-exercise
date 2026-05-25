class RemoveUsersFromUsers < ActiveRecord::Migration[8.1]
  def change
    remove_column :users, :users, :string
  end
end
