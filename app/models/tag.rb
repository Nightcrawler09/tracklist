class Tag < ActiveRecord::Base
  attr_accessible :name
  has_many :authors, through: :taglinks
  has_many :albums, through: :taglinks
  has_many :tracks, through: :taglinks
  has_many :taglinks
  validates :name, presence: true, uniqueness: true
end
