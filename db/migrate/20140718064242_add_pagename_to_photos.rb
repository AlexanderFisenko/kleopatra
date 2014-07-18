class AddPagenameToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :pagename, :string
  end
end
