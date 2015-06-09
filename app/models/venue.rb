class Venue < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => { :scope => :address }
  validates :name, :uniqueness => true
  validates :address, :presence => true, :uniqueness => true
  validates :main_cuisine, :presence => true, :uniqueness => true



  has_many :reviews



end
