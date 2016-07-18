 class Results < ActiveRecord::Migration
  def change
   create_table :results do | t |
   t.string :category
   t.string :value_1
   t.string :value_2
   t.date   :point_in_time
   t.date   :created_at
   t.date   :updated_at  
  end
  end
end
