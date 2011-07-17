require 'test_helper'

class PlayerlevelsControllerTest < ActionController::TestCase
  setup do
    @playerlevel = playerlevels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:playerlevels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create playerlevel" do
    assert_difference('Playerlevel.count') do
      post :create, :playerlevel => @playerlevel.attributes
    end

    assert_redirected_to playerlevel_path(assigns(:playerlevel))
  end

  test "should show playerlevel" do
    get :show, :id => @playerlevel.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @playerlevel.to_param
    assert_response :success
  end

  test "should update playerlevel" do
    put :update, :id => @playerlevel.to_param, :playerlevel => @playerlevel.attributes
    assert_redirected_to playerlevel_path(assigns(:playerlevel))
  end

  test "should destroy playerlevel" do
    assert_difference('Playerlevel.count', -1) do
      delete :destroy, :id => @playerlevel.to_param
    end

    assert_redirected_to playerlevels_path
  end
end
