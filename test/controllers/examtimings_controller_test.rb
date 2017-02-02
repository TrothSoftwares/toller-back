require 'test_helper'

class ExamtimingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @examtiming = examtimings(:one)
  end

  test "should get index" do
    get examtimings_url, as: :json
    assert_response :success
  end

  test "should create examtiming" do
    assert_difference('Examtiming.count') do
      post examtimings_url, params: { examtiming: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show examtiming" do
    get examtiming_url(@examtiming), as: :json
    assert_response :success
  end

  test "should update examtiming" do
    patch examtiming_url(@examtiming), params: { examtiming: {  } }, as: :json
    assert_response 200
  end

  test "should destroy examtiming" do
    assert_difference('Examtiming.count', -1) do
      delete examtiming_url(@examtiming), as: :json
    end

    assert_response 204
  end
end
