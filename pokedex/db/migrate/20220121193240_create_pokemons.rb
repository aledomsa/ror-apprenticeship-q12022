class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.number :id
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
