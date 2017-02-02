require 'test_helper'

class SchedulesetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scheduleset = schedulesets(:one)
  end

  test "should get index" do
    get schedulesets_url, as: :json
    assert_response :success
  end

  test "should create scheduleset" do
    assert_difference('Scheduleset.count') do
      post schedulesets_url, params: { scheduleset: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show scheduleset" do
    get scheduleset_url(@scheduleset), as: :json
    assert_response :success
  end

  test "should update scheduleset" do
    patch scheduleset_url(@scheduleset), params: { scheduleset: {  } }, as: :json
    assert_response 200
  end

  test "should destroy scheduleset" do
    assert_difference('Scheduleset.count', -1) do
      delete scheduleset_url(@scheduleset), as: :json
    end

    assert_response 204
  end
end
