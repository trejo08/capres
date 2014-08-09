module Api
	class BaseController < ApplicationController
		layout 'api'
		responds :json
		def index
		end
	end
end