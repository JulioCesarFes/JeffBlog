require "application_system_test_case"

class Writer::UsersTest < ApplicationSystemTestCase
  setup do
    @writer_user = writer_users(:one)
  end

  test "visiting the index" do
    visit writer_users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit writer_users_url
    click_on "New user"

    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit writer_user_url(@writer_user)
    click_on "Edit this user", match: :first

    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit writer_user_url(@writer_user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
