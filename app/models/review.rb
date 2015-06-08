class Review < ActiveRecord::Base

  validates :user_id, :presence => true
  validates :venue_id, :presence => true
  validates :general_rating, :presence => true, :numericality => { :greater_than => 0, :less_than => 6, :only_integer => true }
  validates :dish_name, :presence => true
  validates :dish_rating, :presence => true
  validates :atmosphere_rating, :presence => true
  validates :average_per_person_price, :presence => true



  belongs_to :user
  belongs_to :venue





end
