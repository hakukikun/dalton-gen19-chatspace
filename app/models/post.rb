class Post < ApplicationRecord
    validates_presence_of :text
    belongs_to :user
    has_many :comments
    has_many :likes, dependent: :destroy
    # has_many :unlikes, dependent: :destroy
end
  