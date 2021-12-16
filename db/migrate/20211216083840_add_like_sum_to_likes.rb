class AddLikeSumToLikes < ActiveRecord::Migration[6.1]
  def change
    add_column :likes, :like_sum, :integer
  end
end
