class CreateBusRoutes < ActiveRecord::Migration
  def change
    create_table :bus_routes do |t|
      t.string :name
      t.float :lat_a
      t.float :lng_a
      t.float :lat_b
      t.float :lng_b
      t.string :departament

      t.timestamps
    end
  end
end
