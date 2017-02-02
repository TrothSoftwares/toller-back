require 'test_helper'

class ExamdaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @examday = examdays(:one)
  end

  test "should get index" do
    get examdays_url, as: :json
    assert_response :success
  end

  test "should create examday" do
    assert_difference('Examday.count') do
      post examdays_url, params: { examday: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show examday" do
    get examday_url(@examday), as: :json
    assert_response :success
  end

  test "should update examday" do
    patch examday_url(@examday), params: { examday: {  } }, as: :json
    assert_response 200
  end

  test "should destroy examday" do
    assert_difference('Examday.count', -1) do
      delete examday_url(@examday), as: :json
    end

    assert_response 204
  end
end
