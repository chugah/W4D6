class AddCompanyProfilesv3 < ActiveRecord::Migration
  def change
  create_table :company_profiles do | t |
   t.references :company
   t.string :top_selling_item
   t.string :least_selling_item
   t.string :legal_structure
   t.integer :annual_sales
   t.integer :avg_unit_price
   t.integer :avg_cost_price
   t.integer :overheads
   t.integer :staff_cost
   t.integer :volume_of_trx
   t.integer :avg_business_open_hours
   t.integer :taxes
   t.integer :current_liabilities
   t.integer :interest
   t.date   :created_at
   t.date   :updated_at
   end
  end
end
