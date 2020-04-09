class Comment < ApplicationRecord
  validates :title, length: { maximum: 255, minimum: 5 },
                    presence: true

  validates :body, length: { maximum: 255, minimum: 10 },
                   presence: true

  belongs_to :user
  belongs_to :post
end
