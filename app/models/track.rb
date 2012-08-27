class Track < ActiveRecord::Base
  belongs_to :album
  belongs_to :author
  has_many :taglinks, as: :resource
  has_many :tags, through: :taglinks
  has_attached_file :song
  attr_accessible :album_id, :author_id, :track_number, :title, :token_inputs, :song
  validates :title, :album, :author, presence: true 

  attr_reader :token_inputs
  def token_inputs=(names)
    names.split(",").each do |name|
      name.slice!("New: ")
      self.tags << Tag.find_or_create_by_name(name.delete('"'))
    end
  end

end
