class RemoveFollowingForeignkey < ActiveRecord::Migration[8.1]
  def change
    remove_reference :followings, :following
  end
end
