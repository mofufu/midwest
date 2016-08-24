require 'test_helper'

class UsermanualsControllerTest < ActionController::TestCase
  setup do
    @usermanual = usermanuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usermanuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usermanual" do
    assert_difference('Usermanual.count') do
      post :create, usermanual: { document_name: @usermanual.document_name, document_type: @usermanual.document_type, user_id: @usermanual.user_id }
    end

    assert_redirected_to usermanual_path(assigns(:usermanual))
  end

  test "should show usermanual" do
    get :show, id: @usermanual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usermanual
    assert_response :success
  end

  test "should update usermanual" do
    patch :update, id: @usermanual, usermanual: { document_name: @usermanual.document_name, document_type: @usermanual.document_type, user_id: @usermanual.user_id }
    assert_redirected_to usermanual_path(assigns(:usermanual))
  end

  test "should destroy usermanual" do
    assert_difference('Usermanual.count', -1) do
      delete :destroy, id: @usermanual
    end

    assert_redirected_to usermanuals_path
  end
end
