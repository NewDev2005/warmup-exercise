class RemoveUserIdFromUsers < ActiveRecord::Migration[8.1]
  def change
    remove_foreign_key :users, column: :user_id
  end
end
