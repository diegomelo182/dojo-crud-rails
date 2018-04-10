require 'test_helper'

class CompactDisksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compact_disk = compact_disks(:one)
  end

  test "should get index" do
    get compact_disks_url, as: :json
    assert_response :success
  end

  test "should create compact_disk" do
    assert_difference('CompactDisk.count') do
      post compact_disks_url, params: { compact_disk: { name: @compact_disk.name, year: @compact_disk.year } }, as: :json
    end

    assert_response 201
  end

  test "should show compact_disk" do
    get compact_disk_url(@compact_disk), as: :json
    assert_response :success
  end

  test "should update compact_disk" do
    patch compact_disk_url(@compact_disk), params: { compact_disk: { name: @compact_disk.name, year: @compact_disk.year } }, as: :json
    assert_response 200
  end

  test "should destroy compact_disk" do
    assert_difference('CompactDisk.count', -1) do
      delete compact_disk_url(@compact_disk), as: :json
    end

    assert_response 204
  end
end
