class CreateAbilitiesPokemonsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :abilities_pokemons do |t|
      t.references :ability, foreign_key: true, null: false
      t.references :pokemon, foreign_key: true, null: false
      t.timestamps
    end
  end
end
