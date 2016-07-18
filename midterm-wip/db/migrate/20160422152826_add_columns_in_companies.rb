class AddColumnsInCompanies < ActiveRecord::Migration
  def change
    
    add_column :companies, :username, :string
    add_column :companies, :password, :string

  end
end
