class Venue < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => { :scope => :address }


  has_many :reviews



end
