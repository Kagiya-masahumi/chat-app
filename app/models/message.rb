class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_one_attached :image

  validates :content, presence: true , unless: :was_attachied?
end

def was_attachied?
  self.image.attached?
end

