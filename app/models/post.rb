class Post < ActiveRecord::Base
  attr_accessible :context, :movie_id, :user_id
  belongs_to :user
  belongs_to :movie
end
