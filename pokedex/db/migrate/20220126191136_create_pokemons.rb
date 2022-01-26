class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.array :ability_list
      t.integer :height
      t.array :image_list
      t.array :move_list
      t.string :name
      t.integer :pokemon_id
      t.array :stat_list
      t.array :type_list
      t.string :url
      t.integer :weight

      t.timestamps
    end
  end
end
