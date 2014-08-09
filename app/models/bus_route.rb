class BusRoute < ActiveRecord::Base
	has_many :bus_states, dependent: :destroy
end
