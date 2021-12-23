class Like < ApplicationRecord
    belongs_to :user,counter_cache: :score
    belongs_to :post,counter_cache: :like_count
    belongs_to :comment,counter_cache: :like_count
    validates :user_id, presence: true
    validates :post_id, presence: true
end
  