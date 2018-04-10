require 'test_helper'

class BuiersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buier = buiers(:one)
  end

  test "should get index" do
    get buiers_url, as: :json
    assert_response :success
  end

  test "should create buier" do
    assert_difference('Buier.count') do
      post buiers_url, params: { buier: { name: @buier.name } }, as: :json
    end

    assert_response 201
  end

  test "should show buier" do
    get buier_url(@buier), as: :json
    assert_response :success
  end

  test "should update buier" do
    patch buier_url(@buier), params: { buier: { name: @buier.name } }, as: :json
    assert_response 200
  end

  test "should destroy buier" do
    assert_difference('Buier.count', -1) do
      delete buier_url(@buier), as: :json
    end

    assert_response 204
  end
end
