class AddLocationsv3 < ActiveRecord::Migration
  def change
  create_table :locations do | t |
   t.string :street_address
   t.string :city
   t.string :province
   t.string :postal_code
   t.date   :created_at
   t.date   :updated_at  
  end
  end
end