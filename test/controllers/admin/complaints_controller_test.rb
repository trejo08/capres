require 'test_helper'

class Admin::ComplaintsControllerTest < ActionController::TestCase
  setup do
    @admin_complaint = admin_complaints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_complaints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_complaint" do
    assert_difference('Admin::Complaint.count') do
      post :create, admin_complaint: {  }
    end

    assert_redirected_to admin_complaint_path(assigns(:admin_complaint))
  end

  test "should show admin_complaint" do
    get :show, id: @admin_complaint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_complaint
    assert_response :success
  end

  test "should update admin_complaint" do
    patch :update, id: @admin_complaint, admin_complaint: {  }
    assert_redirected_to admin_complaint_path(assigns(:admin_complaint))
  end

  test "should destroy admin_complaint" do
    assert_difference('Admin::Complaint.count', -1) do
      delete :destroy, id: @admin_complaint
    end

    assert_redirected_to admin_complaints_path
  end
end
