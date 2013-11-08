class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :context
      t.integer :user_id
      t.integer :movie_id

      t.timestamps
    end
  end
end
