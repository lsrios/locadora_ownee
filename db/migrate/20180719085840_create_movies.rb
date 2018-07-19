class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :genre_id
      t.float :rent_price

      t.timestamps
    end
  end
end
