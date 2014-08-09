class CreateBusStates < ActiveRecord::Migration
  def change
    create_table :bus_states do |t|
      t.string :name
      t.float :lat
      t.float :lng
      t.references :bus_route, index: true

      t.timestamps
    end
  end
end
