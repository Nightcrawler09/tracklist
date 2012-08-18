class Taglink < ActiveRecord::Base
  attr_accessible :resource_id, :resource_type, :tag_id
  belongs_to :resource, polymorphic: true
  belongs_to :tag
end
