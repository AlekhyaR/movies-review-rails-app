class AddMovieRelationToReview < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :movie_id, :integer
  end
end