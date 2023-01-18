require "test_helper"

class BloksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blok = bloks(:one)
  end

  test "should get index" do
    get bloks_url
    assert_response :success
  end

  test "should get new" do
    get new_blok_url
    assert_response :success
  end

  test "should create blok" do
    assert_difference("Blok.count") do
      post bloks_url, params: { blok: { body: @blok.body, title: @blok.title } }
    end

    assert_redirected_to blok_url(Blok.last)
  end

  test "should show blok" do
    get blok_url(@blok)
    assert_response :success
  end

  test "should get edit" do
    get edit_blok_url(@blok)
    assert_response :success
  end

  test "should update blok" do
    patch blok_url(@blok), params: { blok: { body: @blok.body, title: @blok.title } }
    assert_redirected_to blok_url(@blok)
  end

  test "should destroy blok" do
    assert_difference("Blok.count", -1) do
      delete blok_url(@blok)
    end

    assert_redirected_to bloks_url
  end
end
