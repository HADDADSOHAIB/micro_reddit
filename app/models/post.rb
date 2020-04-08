class Post < ApplicationRecord
  validates :title, length: { maximum: 255, minimum: 20},
    presence: true

  validates :body, length: { maximum: 255, minimum: 20},
    presence: true
  
  belongs_to :user
end
