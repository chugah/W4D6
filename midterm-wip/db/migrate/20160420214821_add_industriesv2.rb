class AddIndustriesv2 < ActiveRecord::Migration
  def change
   create_table :industries do | t |
   t.string :industry_name
   t.date   :created_at
   t.date   :updated_at
    end
  end
end
 