class Review < ApplicationRecord
  validates_presence_of :movie, :user, :stars, :review
  belongs_to :movie
end
