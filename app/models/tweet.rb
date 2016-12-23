class Tweet < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :content, presence: true, length: { maximum: 140,
  	too_long: "%{count} characters is all you get" }
end
