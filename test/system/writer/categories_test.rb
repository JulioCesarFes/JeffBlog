require "application_system_test_case"

class Writer::CategoriesTest < ApplicationSystemTestCase
  setup do
    @writer_category = writer_categories(:one)
  end

  test "visiting the index" do
    visit writer_categories_url
    assert_selector "h1", text: "Categories"
  end

  test "should create category" do
    visit writer_categories_url
    click_on "New category"

    click_on "Create Category"

    assert_text "Category was successfully created"
    click_on "Back"
  end

  test "should update Category" do
    visit writer_category_url(@writer_category)
    click_on "Edit this category", match: :first

    click_on "Update Category"

    assert_text "Category was successfully updated"
    click_on "Back"
  end

  test "should destroy Category" do
    visit writer_category_url(@writer_category)
    click_on "Destroy this category", match: :first

    assert_text "Category was successfully destroyed"
  end
end
