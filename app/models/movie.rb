class Movie < ApplicationRecord
  validates_presence_of :title, :description, :director, :year, :actor, :filming_location, :country
  has_many :reviews

  def self.search(search)
    if search
      where('actor LIKE ?', '%#{search}%')
    else
      all
    end
  end
end
