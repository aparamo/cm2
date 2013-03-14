class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :title
      t.text :description
      t.boolean :unlocked
      t.string :file_url
      t.integer :level_id

      t.timestamps
    end
  end
end
