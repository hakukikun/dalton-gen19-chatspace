class AddLikeSumToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :like_sum, :integer
  end
end
