class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.integer :id
      t.array :abilities
      t.integer :height
      t.array :images
      t.array :moves
      t.string :name
      t.integer :pokemon_id
      t.array :stats
      t.array :types
      t.string :url
      t.integer :weight

      t.timestamps
    end
  end
end
