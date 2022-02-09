class CreatePokemonsTypesJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons_types do |t|
      t.references :type, foreign_key: true, null: false
      t.references :pokemon, foreign_key: true, null: false
      t.timestamps
    end
  end
end
