class Comment < ApplicationRecord
    validates_presence_of :text
    belongs_to :post
    belongs_to :user
end
  