class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users do |t|
      t.string :name
      t.belongs_to :following_user, foreign_key: { to_table: :Users }
      t.timestamps
    end
  end
end
