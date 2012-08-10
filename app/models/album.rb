class Album < ActiveRecord::Base
  belongs_to :author
  attr_accessible :author_id, :description, :tag_id, :title
end
