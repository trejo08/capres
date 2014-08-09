class Admin::ComplaintsController < ApplicationController
  before_action :set_admin_complaint, only: [:show, :edit, :update, :destroy]

  # GET /admin/complaints
  # GET /admin/complaints.json
  def index
    @admin_complaints = Complaint.all
  end

  # GET /admin/complaints/1
  # GET /admin/complaints/1.json
  def show
  end

  # GET /admin/complaints/new
  def new
    @admin_complaint = Complaint.new
  end

  # GET /admin/complaints/1/edit
  def edit
  end

  # POST /admin/complaints
  # POST /admin/complaints.json
  def create
    @admin_complaint = Complaint.new(admin_complaint_params)

    respond_to do |format|
      if @admin_complaint.save
        format.html { redirect_to @admin_complaint, notice: 'Complaint was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_complaint }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/complaints/1
  # PATCH/PUT /admin/complaints/1.json
  def update
    respond_to do |format|
      if @admin_complaint.update(admin_complaint_params)
        format.html { redirect_to @admin_complaint, notice: 'Complaint was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/complaints/1
  # DELETE /admin/complaints/1.json
  def destroy
    @admin_complaint.destroy
    respond_to do |format|
      format.html { redirect_to admin_complaints_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_complaint
      @admin_complaint = Complaint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_complaint_params
      params[:admin_complaint]
    end
end
