class Campaign < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 150 }
  validates :story, presence: true
  validates :target_date, presence: true
  validates :goal, presence: true

  belongs_to :user
end
