require 'test_helper'

class FusensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fusen = fusens(:one)
  end

  test "should get index" do
    get fusens_url
    assert_response :success
  end

  test "should get new" do
    get new_fusen_url
    assert_response :success
  end

  test "should create fusen" do
    assert_difference('Fusen.count') do
      post fusens_url, params: { fusen: { dom_height: @fusen.dom_height, dom_width: @fusen.dom_width, left: @fusen.left, message: @fusen.message, title: @fusen.title, top: @fusen.top } }
    end

    assert_redirected_to fusen_url(Fusen.last)
  end

  test "should show fusen" do
    get fusen_url(@fusen)
    assert_response :success
  end

  test "should get edit" do
    get edit_fusen_url(@fusen)
    assert_response :success
  end

  test "should update fusen" do
    patch fusen_url(@fusen), params: { fusen: { dom_height: @fusen.dom_height, dom_width: @fusen.dom_width, left: @fusen.left, message: @fusen.message, title: @fusen.title, top: @fusen.top } }
    assert_redirected_to fusen_url(@fusen)
  end

  test "should destroy fusen" do
    assert_difference('Fusen.count', -1) do
      delete fusen_url(@fusen)
    end

    assert_redirected_to fusens_url
  end
end
