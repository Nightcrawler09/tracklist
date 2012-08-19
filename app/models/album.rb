class Album < ActiveRecord::Base
  belongs_to :author
  has_many :tracks, :order => 'track_number ASC'
  has_many :taglinks, as: :resource
  has_many :tags, through: :taglinks
  attr_accessible :author_id, :description, :tag_id, :title, :token_inputs
  validates :title, :author, presence: true
  attr_reader :token_inputs

  def token_inputs=(names)
    names.split(",").each do |name|
      name.slice!("New: ")
      self.tags << Tag.find_or_create_by_name(name.delete('"'))
    end
  end
end
