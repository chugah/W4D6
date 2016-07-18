class AddResultsv3 < ActiveRecord::Migration
   def change
   create_table :results do | t |
   t.string :category
   t.string :text_value_1
   t.integer :data_value_1
   t.integer :data_value_2
   t.date   :point_in_time
   t.date   :created_at
   t.date   :updated_at  
   t.references :company
  end
  end
end
