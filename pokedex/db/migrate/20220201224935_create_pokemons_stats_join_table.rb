class CreatePokemonsStatsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons_stats do |t|
      t.references :stat, foreign_key: true, null: false
      t.references :pokemon, foreign_key: true, null: false
      t.timestamps
    end
  end
end
