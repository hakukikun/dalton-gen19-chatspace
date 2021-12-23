class ChangeColumnDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :posts, :text, from: true, to: false
    change_column_default :comments, :text, from: true, to: false
    change_column_default :comments, :like_count, from: true, to: false
  end
end
