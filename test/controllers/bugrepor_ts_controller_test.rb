require 'test_helper'

class BugreporTsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bugreport = bugreports(:one)
  end

  test "should get index" do
    get bugreports_url
    assert_response :success
  end

  test "should get new" do
    get new_bugreport_url
    assert_response :success
  end

  test "should create bugreport" do
    assert_difference('Bugreport.count') do
      post bugreports_url, params: { bugreport: { body: @bugreport.body, title: @bugreport.title } }
    end

    assert_redirected_to bugreport_url(Bugreport.last)
  end

  test "should show bugreport" do
    get bugreport_url(@bugreport)
    assert_response :success
  end

  test "should get edit" do
    get edit_bugreport_url(@bugreport)
    assert_response :success
  end

  test "should update bugreport" do
    patch bugreport_url(@bugreport), params: { bugreport: { body: @bugreport.body, title: @bugreport.title } }
    assert_redirected_to bugreport_url(@bugreport)
  end

  test "should destroy bugreport" do
    assert_difference('Bugreport.count', -1) do
      delete bugreport_url(@bugreport)
    end

    assert_redirected_to bugreports_url
  end
end
