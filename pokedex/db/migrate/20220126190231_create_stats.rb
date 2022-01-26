class CreateStats < ActiveRecord::Migration[6.1]
  def change
    create_table :stats do |t|
      t.integer :id
      t.integer :effort_value
      t.string :name
      t.integer :stat_value
      t.string :url

      t.timestamps
    end
  end
end
