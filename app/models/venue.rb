class Venue < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => { :scope => :address }
  validates :address, :presence => true
  validates :main_cuisine, :presence => true


  has_many :reviews



end
