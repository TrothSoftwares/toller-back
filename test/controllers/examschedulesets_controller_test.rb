require 'test_helper'

class ExamschedulesetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @examscheduleset = examschedulesets(:one)
  end

  test "should get index" do
    get examschedulesets_url, as: :json
    assert_response :success
  end

  test "should create examscheduleset" do
    assert_difference('Examscheduleset.count') do
      post examschedulesets_url, params: { examscheduleset: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show examscheduleset" do
    get examscheduleset_url(@examscheduleset), as: :json
    assert_response :success
  end

  test "should update examscheduleset" do
    patch examscheduleset_url(@examscheduleset), params: { examscheduleset: {  } }, as: :json
    assert_response 200
  end

  test "should destroy examscheduleset" do
    assert_difference('Examscheduleset.count', -1) do
      delete examscheduleset_url(@examscheduleset), as: :json
    end

    assert_response 204
  end
end
