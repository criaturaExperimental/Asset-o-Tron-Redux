require 'test_helper'

class MyAssetsControllerTest < ActionController::TestCase
  setup do
    @my_asset = my_assets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_assets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_asset" do
    assert_difference('MyAsset.count') do
      post :create, my_asset: {  }
    end

    assert_redirected_to my_asset_path(assigns(:my_asset))
  end

  test "should show my_asset" do
    get :show, id: @my_asset
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_asset
    assert_response :success
  end

  test "should update my_asset" do
    patch :update, id: @my_asset, my_asset: {  }
    assert_redirected_to my_asset_path(assigns(:my_asset))
  end

  test "should destroy my_asset" do
    assert_difference('MyAsset.count', -1) do
      delete :destroy, id: @my_asset
    end

    assert_redirected_to my_assets_path
  end
end
