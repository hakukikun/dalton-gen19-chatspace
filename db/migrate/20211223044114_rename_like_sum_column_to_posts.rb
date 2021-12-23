class RenameLikeSumColumnToPosts < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :like_sum, :like_count
  end
end
