class CreateAbilities < ActiveRecord::Migration[6.1]
  def change
    create_table :abilities do |t|
      t.integer :ability_id
      t.boolean :is_hidden
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
