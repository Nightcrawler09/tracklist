class Author < ActiveRecord::Base
  has_many :albums
  has_many :tracks
  attr_accessible :description, :name
end
