class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :director
      t.integer :year
      t.string :actor
      t.string :filming_location
      t.string :country

      t.timestamps
    end
  end
end
