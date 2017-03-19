class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :species
      t.integer :number

      t.timestamps
    end
  end
end
