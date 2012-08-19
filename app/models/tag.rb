class Tag < ActiveRecord::Base
  attr_accessible :name
  has_many :authors, through: :taglinks
  has_many :albums, through: :taglinks
  has_many :tracks, through: :taglinks
  has_many :taglinks
  validates :name, presence: true, uniqueness: true
  def self.tokens(query)
    tags = where("name like ?", "%#{query}%")
    if tags.empty?
      [{id: "<<<#{query}>>>", name: "New: \"#{query}\""}]
    else
      tags
    end
  end
end
