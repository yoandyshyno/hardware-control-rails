require 'test_helper'

class OsDistrosControllerTest < ActionController::TestCase
  setup do
    @os_distro = os_distros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:os_distros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create os_distro" do
    assert_difference('OsDistro.count') do
      post :create, os_distro: { codename: @os_distro.codename, remarks: @os_distro.remarks, support_expiration_date: @os_distro.support_expiration_date, version: @os_distro.version }
    end

    assert_redirected_to os_distro_path(assigns(:os_distro))
  end

  test "should show os_distro" do
    get :show, id: @os_distro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @os_distro
    assert_response :success
  end

  test "should update os_distro" do
    patch :update, id: @os_distro, os_distro: { codename: @os_distro.codename, remarks: @os_distro.remarks, support_expiration_date: @os_distro.support_expiration_date, version: @os_distro.version }
    assert_redirected_to os_distro_path(assigns(:os_distro))
  end

  test "should destroy os_distro" do
    assert_difference('OsDistro.count', -1) do
      delete :destroy, id: @os_distro
    end

    assert_redirected_to os_distros_path
  end
end
