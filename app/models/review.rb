class Review < ActiveRecord::Base

  validates :user_id, :presence => true
  validates :venue_id, :presence => true

  belongs_to :user
  belongs_to :venue




end
