class Album < ActiveRecord::Base
  belongs_to :author
  has_many :tracks, :order => 'track_number ASC'
  attr_accessible :author_id, :description, :tag_id, :title
  validates :title, :author, presence: true
end
