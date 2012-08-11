class ChangeColumnAuthor < ActiveRecord::Migration
  def change
    rename_column :tracks, :author, :author_id
  end
end
