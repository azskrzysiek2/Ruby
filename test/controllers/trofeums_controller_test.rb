require 'test_helper'

class TrofeumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trofeum = trofeums(:one)
  end

  test "should get index" do
    get trofeums_url
    assert_response :success
  end

  test "should get new" do
    get new_trofeum_url
    assert_response :success
  end

  test "should create trofeum" do
    assert_difference('Trofeum.count') do
      post trofeums_url, params: { trofeum: { klub_id: @trofeum.klub_id, name: @trofeum.name, value: @trofeum.value } }
    end

    assert_redirected_to trofeum_url(Trofeum.last)
  end

  test "should show trofeum" do
    get trofeum_url(@trofeum)
    assert_response :success
  end

  test "should get edit" do
    get edit_trofeum_url(@trofeum)
    assert_response :success
  end

  test "should update trofeum" do
    patch trofeum_url(@trofeum), params: { trofeum: { klub_id: @trofeum.klub_id, name: @trofeum.name, value: @trofeum.value } }
    assert_redirected_to trofeum_url(@trofeum)
  end

  test "should destroy trofeum" do
    assert_difference('Trofeum.count', -1) do
      delete trofeum_url(@trofeum)
    end

    assert_redirected_to trofeums_url
  end
end
