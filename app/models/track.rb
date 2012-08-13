class Track < ActiveRecord::Base
  belongs_to :album
  belongs_to :author
  attr_accessible :album_id, :author_id, :track_number, :tag_id, :title
  validates :title, :album, :author, presence: true
end
