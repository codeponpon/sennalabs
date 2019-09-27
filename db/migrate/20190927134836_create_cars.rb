class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :person_id

      t.timestamps
    end
  end
end
