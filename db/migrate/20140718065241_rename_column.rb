class RenameColumn < ActiveRecord::Migration
  def self.up
    rename_column :photos, :pagename, :page_name
  end
end
