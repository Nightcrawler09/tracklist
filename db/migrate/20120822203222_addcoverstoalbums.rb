class Addcoverstoalbums < ActiveRecord::Migration
  def up
    add_attachment :albums, :cover
  end
  def down 
    remove_attachment :albums, :cover
  end
end
