class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :animal_name
      t.string :animal_type
      t.string :animal_size
      t.string :animal_age
      t.string :animal_gender
      t.text :animal_description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
