require 'test_helper'

class WorkstationMonitorsControllerTest < ActionController::TestCase
  setup do
    @workstation_monitor = workstation_monitors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workstation_monitors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workstation_monitor" do
    assert_difference('WorkstationMonitor.count') do
      post :create, workstation_monitor: { brand: @workstation_monitor.brand, remarks: @workstation_monitor.remarks, resolution_hight: @workstation_monitor.resolution_hight, resolution_width: @workstation_monitor.resolution_width, size: @workstation_monitor.size }
    end

    assert_redirected_to workstation_monitor_path(assigns(:workstation_monitor))
  end

  test "should show workstation_monitor" do
    get :show, id: @workstation_monitor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workstation_monitor
    assert_response :success
  end

  test "should update workstation_monitor" do
    patch :update, id: @workstation_monitor, workstation_monitor: { brand: @workstation_monitor.brand, remarks: @workstation_monitor.remarks, resolution_hight: @workstation_monitor.resolution_hight, resolution_width: @workstation_monitor.resolution_width, size: @workstation_monitor.size }
    assert_redirected_to workstation_monitor_path(assigns(:workstation_monitor))
  end

  test "should destroy workstation_monitor" do
    assert_difference('WorkstationMonitor.count', -1) do
      delete :destroy, id: @workstation_monitor
    end

    assert_redirected_to workstation_monitors_path
  end
end
