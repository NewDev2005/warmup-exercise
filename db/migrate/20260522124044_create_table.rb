class CreateTable < ActiveRecord::Migration[8.1]
  def change
    create_table :tables do |t|
      t.string :users

      t.timestamps
    end
  end
end
