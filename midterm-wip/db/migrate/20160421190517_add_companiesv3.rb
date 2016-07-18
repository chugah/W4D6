class AddCompaniesv3 < ActiveRecord::Migration
  def change
  create_table :companies do | t |
   t.string :company_name
   t.string :url
   t.date   :created_at
   t.date   :updated_at
   t.references :location
   t.references :industry
  end  
  end
end