class ChangeTableName < ActiveRecord::Migration[8.1]
  def change
    rename_table :tables, :user
  end
end
