class AddUsersv4 < ActiveRecord::Migration
  def change
  create_table :users do | t |
   t.string :firstname
   t.string :lastname
   t.string :username
   t.string :email
   t.string :password, null: false
   t.string :session_token
   t.date   :created_at
   t.date   :updated_at
   t.references :company
    end
  end  
  end
