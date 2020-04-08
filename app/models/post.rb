class Post < ApplicationRecord
  validates :title, length: { maximum: 255, minimum: 5 },
                    presence: true

  validates :body, length: { maximum: 255, minimum: 10 },
                   presence: true

  belongs_to :user
  has_many :comments
end
