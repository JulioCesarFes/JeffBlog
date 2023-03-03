require "test_helper"

class Writer::CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @writer_category = writer_categories(:one)
  end

  test "should get index" do
    get writer_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_writer_category_url
    assert_response :success
  end

  test "should create writer_category" do
    assert_difference("Writer::Category.count") do
      post writer_categories_url, params: { writer_category: {  } }
    end

    assert_redirected_to writer_category_url(Writer::Category.last)
  end

  test "should show writer_category" do
    get writer_category_url(@writer_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_writer_category_url(@writer_category)
    assert_response :success
  end

  test "should update writer_category" do
    patch writer_category_url(@writer_category), params: { writer_category: {  } }
    assert_redirected_to writer_category_url(@writer_category)
  end

  test "should destroy writer_category" do
    assert_difference("Writer::Category.count", -1) do
      delete writer_category_url(@writer_category)
    end

    assert_redirected_to writer_categories_url
  end
end
