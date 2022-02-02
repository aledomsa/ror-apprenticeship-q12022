class CreateMovesPokemonsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :moves_pokemons do |t|
      t.references :move, foreign_key: true, null: false
      t.references :pokemon, foreign_key: true, null: false
      t.timestamps
    end
  end
end
