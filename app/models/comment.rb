class Comment < ApplicationRecord
    validates_presence_of :text
    has_rich_text :text
    belongs_to :post
    belongs_to :user
end
  