class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :bus_route
      t.text :description

      t.timestamps
    end
  end
end
