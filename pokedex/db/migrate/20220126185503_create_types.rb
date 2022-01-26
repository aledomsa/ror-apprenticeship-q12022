class CreateTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :types do |t|
      t.integer :id
      t.string :name
      t.integer :type_id
      t.string :url

      t.timestamps
    end
  end
end
