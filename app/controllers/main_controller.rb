class MainController < ApplicationController
  def index
  end

  def complaints
  	@complaint = Complaint.new
  	@routes = BusRoute.all rescue []
  end

  def save_complaint
  	complaint = Complaint.new(complaint_params)
    respond_to do |format|
      if complaint.save
        format.html { redirect_to root_path, notice: 'Tu denuncia ha sido enviada exitosamente.' }
      else
        format.html { render action: "complaints" }
      end
    end
    
  end

  private
  	def complaint_params
  		params.require(:complaint).permit(:image, :name, :email, :phone, :description, :bus_route)
  	end
end
