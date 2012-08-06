class Album < ActiveRecord::Base
  attr_accessible :author_id, :description, :tag_id, :title
end
