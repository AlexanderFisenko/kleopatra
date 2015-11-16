class CreateSpecialPages < ActiveRecord::Migration
  def change
    create_table :special_pages do |t|
      t.text :content
      t.string :image
      t.string :url

      t.timestamps
    end
  end
end
