class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.integer :abv
      t.string :type_of_beer
      t.references :brewery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
