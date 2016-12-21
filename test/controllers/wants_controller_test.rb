require 'test_helper'

class WantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @want = wants(:one)
  end

  test "should get index" do
    get wants_url
    assert_response :success
  end

  test "should get new" do
    get new_want_url
    assert_response :success
  end

  test "should create want" do
    assert_difference('Want.count') do
      post wants_url, params: { want: { summary: @want.summary, title: @want.title, user_id: @want.user_id } }
    end

    assert_redirected_to want_url(Want.last)
  end

  test "should show want" do
    get want_url(@want)
    assert_response :success
  end

  test "should get edit" do
    get edit_want_url(@want)
    assert_response :success
  end

  test "should update want" do
    patch want_url(@want), params: { want: { summary: @want.summary, title: @want.title, user_id: @want.user_id } }
    assert_redirected_to want_url(@want)
  end

  test "should destroy want" do
    assert_difference('Want.count', -1) do
      delete want_url(@want)
    end

    assert_redirected_to wants_url
  end
end
