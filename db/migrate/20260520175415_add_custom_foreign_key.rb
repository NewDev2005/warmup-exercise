class AddCustomForeignKey < ActiveRecord::Migration[8.1]
  def change
    add_reference(:users, :following_user, foreign_key: { to_table: :users })
  end
end
