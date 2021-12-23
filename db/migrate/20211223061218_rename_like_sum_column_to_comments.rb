class RenameLikeSumColumnToComments < ActiveRecord::Migration[7.0]
  def change
    rename_column :comments, :like_sum, :like_count
  end
end
