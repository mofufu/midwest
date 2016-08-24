require 'test_helper'

class CompanyformsControllerTest < ActionController::TestCase
  setup do
    @companyform = companyforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companyforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create companyform" do
    assert_difference('Companyform.count') do
      post :create, companyform: { attachment: @companyform.attachment, companydoc_id: @companyform.companydoc_id, name: @companyform.name }
    end

    assert_redirected_to companyform_path(assigns(:companyform))
  end

  test "should show companyform" do
    get :show, id: @companyform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @companyform
    assert_response :success
  end

  test "should update companyform" do
    patch :update, id: @companyform, companyform: { attachment: @companyform.attachment, companydoc_id: @companyform.companydoc_id, name: @companyform.name }
    assert_redirected_to companyform_path(assigns(:companyform))
  end

  test "should destroy companyform" do
    assert_difference('Companyform.count', -1) do
      delete :destroy, id: @companyform
    end

    assert_redirected_to companyforms_path
  end
end
