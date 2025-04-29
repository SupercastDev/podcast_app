class Episode < ApplicationRecord
  validates :title, presence: true
  validates :duration, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :audio_url, presence: true, format: { with: URI::regexp(%w[http https]) }
end
