class Author < ActiveRecord::Base
  has_many :albums
  has_many :tracks
  has_many :taglinks, as: :resource
  has_many :tags, through: :taglinks
  attr_accessible :description, :name
  validates :name, presence: true
end
