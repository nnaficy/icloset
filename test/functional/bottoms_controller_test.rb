require 'test_helper'

class BottomsControllerTest < ActionController::TestCase
  setup do
    @bottom = bottoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bottoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bottom" do
    assert_difference('Bottom.count') do
      post :create, bottom: @bottom.attributes
    end

    assert_redirected_to bottom_path(assigns(:bottom))
  end

  test "should show bottom" do
    get :show, id: @bottom.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bottom.to_param
    assert_response :success
  end

  test "should update bottom" do
    put :update, id: @bottom.to_param, bottom: @bottom.attributes
    assert_redirected_to bottom_path(assigns(:bottom))
  end

  test "should destroy bottom" do
    assert_difference('Bottom.count', -1) do
      delete :destroy, id: @bottom.to_param
    end

    assert_redirected_to bottoms_path
  end
end
