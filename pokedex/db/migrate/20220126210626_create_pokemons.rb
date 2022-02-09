class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.text :ability_list
      t.integer :height
      t.text :image_list
      t.text :move_list
      t.string :name
      t.integer :pokemon_id
      t.text :stat_list
      t.text :type_list
      t.string :url
      t.integer :weight

      t.timestamps
    end
  end
end
