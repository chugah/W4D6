class AddCompanyProfiles < ActiveRecord::Migration
  def change
  create_table :company_profiles do | t |
   t.references :company
   t.string :stringset_1
   t.string :stringset_2
   t.string :stringset_3
   t.string :stringset_4
   t.integer :dataset_1
   t.integer :dataset_2
   t.integer :dataset_3
   t.integer :dataset_4
   t.integer :dataset_5
   t.integer :dataset_6
   t.date   :created_at
   t.date   :updated_at
   end
  end
end
 