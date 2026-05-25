class AddUserForeignKeyInFollowing < ActiveRecord::Migration[8.1]
  def change
    add_reference :followings, :user, index: true, foreign_key: true
  end
end
