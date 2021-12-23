class RenameLikeSumColumnToLikes < ActiveRecord::Migration[7.0]
  def change
    rename_column :likes, :like_sum, :like
  end
end
