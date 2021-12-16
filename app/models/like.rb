class Like < ApplicationRecord
    belongs_to :user,counter_cache: :score
    belongs_to :post,counter_cache: :like_sum
    validates :user_id, {presence: true}
    validates :post_id, {presence: true}
end
  