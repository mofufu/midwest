require 'test_helper'

class CompanydocsControllerTest < ActionController::TestCase
  setup do
    @companydoc = companydocs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companydocs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create companydoc" do
    assert_difference('Companydoc.count') do
      post :create, companydoc: {  }
    end

    assert_redirected_to companydoc_path(assigns(:companydoc))
  end

  test "should show companydoc" do
    get :show, id: @companydoc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @companydoc
    assert_response :success
  end

  test "should update companydoc" do
    patch :update, id: @companydoc, companydoc: {  }
    assert_redirected_to companydoc_path(assigns(:companydoc))
  end

  test "should destroy companydoc" do
    assert_difference('Companydoc.count', -1) do
      delete :destroy, id: @companydoc
    end

    assert_redirected_to companydocs_path
  end
end
