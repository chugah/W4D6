class ExternalDataRepositories < ActiveRecord::Migration
  def change
  create_table :external_data_repositories do | t |
   t.string :category
   t.string :value_1
   t.string :value_2
   t.date   :created_at
   t.date   :updated_at  
  end
  end
end
 