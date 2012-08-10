class Author < ActiveRecord::Base
  has_many :albums
  attr_accessible :description, :name
end
