class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :title
      t.text :description
      t.text :extra
      t.string :fun_url
      t.string :science_url
      t.string :image_url

      t.timestamps
    end
  end
end
