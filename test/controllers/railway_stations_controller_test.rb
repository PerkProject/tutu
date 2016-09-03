require 'test_helper'

class RailwayStationsControllerTest < ActionController::TestCase
  setup do
    @railway_station = railway_stations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:railway_stations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create railway_station" do
    assert_difference('RailwayStation.count') do
      post :create, railway_station: { title: @railway_station.title }
    end

    assert_redirected_to railway_station_path(assigns(:railway_station))
  end

  test "should show railway_station" do
    get :show, id: @railway_station
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @railway_station
    assert_response :success
  end

  test "should update railway_station" do
    patch :update, id: @railway_station, railway_station: { title: @railway_station.title }
    assert_redirected_to railway_station_path(assigns(:railway_station))
  end

  test "should destroy railway_station" do
    assert_difference('RailwayStation.count', -1) do
      delete :destroy, id: @railway_station
    end

    assert_redirected_to railway_stations_path
  end
end
