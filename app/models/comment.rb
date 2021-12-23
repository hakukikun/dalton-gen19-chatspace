class Comment < ApplicationRecord
    validates :text, {presence: true}
    has_rich_text :text
    
    belongs_to :post
    belongs_to :user
end
  