require "test_helper"

class Writer::UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @writer_user = writer_users(:one)
  end

  test "should get index" do
    get writer_users_url
    assert_response :success
  end

  test "should get new" do
    get new_writer_user_url
    assert_response :success
  end

  test "should create writer_user" do
    assert_difference("Writer::User.count") do
      post writer_users_url, params: { writer_user: {  } }
    end

    assert_redirected_to writer_user_url(Writer::User.last)
  end

  test "should show writer_user" do
    get writer_user_url(@writer_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_writer_user_url(@writer_user)
    assert_response :success
  end

  test "should update writer_user" do
    patch writer_user_url(@writer_user), params: { writer_user: {  } }
    assert_redirected_to writer_user_url(@writer_user)
  end

  test "should destroy writer_user" do
    assert_difference("Writer::User.count", -1) do
      delete writer_user_url(@writer_user)
    end

    assert_redirected_to writer_users_url
  end
end
