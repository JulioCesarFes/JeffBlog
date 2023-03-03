require "test_helper"

class Writer::PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @writer_post = writer_posts(:one)
  end

  test "should get index" do
    get writer_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_writer_post_url
    assert_response :success
  end

  test "should create writer_post" do
    assert_difference("Writer::Post.count") do
      post writer_posts_url, params: { writer_post: {  } }
    end

    assert_redirected_to writer_post_url(Writer::Post.last)
  end

  test "should show writer_post" do
    get writer_post_url(@writer_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_writer_post_url(@writer_post)
    assert_response :success
  end

  test "should update writer_post" do
    patch writer_post_url(@writer_post), params: { writer_post: {  } }
    assert_redirected_to writer_post_url(@writer_post)
  end

  test "should destroy writer_post" do
    assert_difference("Writer::Post.count", -1) do
      delete writer_post_url(@writer_post)
    end

    assert_redirected_to writer_posts_url
  end
end
