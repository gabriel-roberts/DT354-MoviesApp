class Movie < ActiveRecord::Base
  attr_accessible :title, :poster, :trailer, :genre_id, :price
  belongs_to:genre
  has_many :posts, :dependent => :destroy
end
