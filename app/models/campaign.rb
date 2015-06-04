class Campaign < ActiveRecord::Base

  has_attached_file :photo, :styles => { :medium => "600x400>", :thumb => "300x200>" }, :default_url => "background3.jpg"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  validates :title, presence: true, length: { maximum: 150 }
  validates :description, presence: true
  validates :story, presence: true
  validates :target_date, presence: true
  validates :goal, presence: true

  belongs_to :user
end
