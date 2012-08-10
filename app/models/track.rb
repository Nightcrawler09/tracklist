class Track < ActiveRecord::Base
  attr_accessible :album_id, :author, :order, :tag_id, :title
end
