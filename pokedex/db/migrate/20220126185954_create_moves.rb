class CreateMoves < ActiveRecord::Migration[6.1]
  def change
    create_table :moves do |t|
      t.integer :id
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
