class ChangeScienceFunVideoForLevels < ActiveRecord::Migration
change_table :levels do |t|  
        t.change :fun_url, :text
        t.change :science_url, :text
        t.change :image_url, :text
    end
end
