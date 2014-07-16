class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :key
      t.string :text

      t.timestamps
    end
  end
end
