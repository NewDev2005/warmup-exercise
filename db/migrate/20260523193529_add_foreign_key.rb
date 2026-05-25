class AddForeignKey < ActiveRecord::Migration[8.1]
  def change
    add_reference :users, :user, index: true, foreign_key: true
    add_reference :followings, :following, index: true, foreign_key: true
  end
end
