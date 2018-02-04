require 'test_helper'

class KlubsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @klub = klubs(:one)
  end

  test "should get index" do
    get klubs_url
    assert_response :success
  end

  test "should get new" do
    get new_klub_url
    assert_response :success
  end

  test "should create klub" do
    assert_difference('Klub.count') do
      post klubs_url, params: { klub: { city: @klub.city, name: @klub.name, position: @klub.position } }
    end

    assert_redirected_to klub_url(Klub.last)
  end

  test "should show klub" do
    get klub_url(@klub)
    assert_response :success
  end

  test "should get edit" do
    get edit_klub_url(@klub)
    assert_response :success
  end

  test "should update klub" do
    patch klub_url(@klub), params: { klub: { city: @klub.city, name: @klub.name, position: @klub.position } }
    assert_redirected_to klub_url(@klub)
  end

  test "should destroy klub" do
    assert_difference('Klub.count', -1) do
      delete klub_url(@klub)
    end

    assert_redirected_to klubs_url
  end
end
