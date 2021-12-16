class AddLikeSumToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :like_sum, :integer
  end
end
