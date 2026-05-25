class AddFollowingForeignKeyAgain < ActiveRecord::Migration[8.1]
  def change
    add_reference :followings, :following, index: true, foreign_key: true
  end
end
