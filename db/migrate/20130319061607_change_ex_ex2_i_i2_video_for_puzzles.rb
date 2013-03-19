class ChangeExEx2II2VideoForPuzzles < ActiveRecord::Migration
   change_table :puzzles do |t|  
        t.change :ex, :text
        t.change :ex2, :text
        t.change :i, :text
        t.change :i2, :text
        t.change :video, :text
    end
end
