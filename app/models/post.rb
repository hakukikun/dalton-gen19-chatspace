class Post < ApplicationRecord
    # has_rich_text :text

    validates :text, uniqueness: true
    belongs_to :user
    has_many :comments
    has_many :likes, dependent: :destroy
    # has_many :unlikes, dependent: :destroy

    def like_user(user_id)
        likes.find_by(user_id: user_id)
    end
end
