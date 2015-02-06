require 'test_helper'

class CongestionsControllerTest < ActionController::TestCase
  setup do
    @congestion = congestions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:congestions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create congestion" do
    assert_difference('Congestion.count') do
      post :create, congestion: { from: @congestion.from, latitude: @congestion.latitude, level: @congestion.level, longitude: @congestion.longitude, time: @congestion.time, to: @congestion.to }
    end

    assert_redirected_to congestion_path(assigns(:congestion))
  end

  test "should show congestion" do
    get :show, id: @congestion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @congestion
    assert_response :success
  end

  test "should update congestion" do
    patch :update, id: @congestion, congestion: { from: @congestion.from, latitude: @congestion.latitude, level: @congestion.level, longitude: @congestion.longitude, time: @congestion.time, to: @congestion.to }
    assert_redirected_to congestion_path(assigns(:congestion))
  end

  test "should destroy congestion" do
    assert_difference('Congestion.count', -1) do
      delete :destroy, id: @congestion
    end

    assert_redirected_to congestions_path
  end
end
