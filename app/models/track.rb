class Track < ActiveRecord::Base
  belongs_to :album
  belongs_to :author
  has_many :taglinks, as: :resource
  has_many :tags, through: :taglinks
  attr_accessible :album_id, :author_id, :track_number, :tag_id, :title
  validates :title, :album, :author, presence: true
end
