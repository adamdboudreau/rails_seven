require "application_system_test_case"

class TestUsersTest < ApplicationSystemTestCase
  setup do
    @test_user = test_users(:one)
  end

  test "visiting the index" do
    visit test_users_url
    assert_selector "h1", text: "Test users"
  end

  test "should create test user" do
    visit test_users_url
    click_on "New test user"

    fill_in "Desc", with: @test_user.desc
    fill_in "Email", with: @test_user.email
    fill_in "Name", with: @test_user.name
    click_on "Create Test user"

    assert_text "Test user was successfully created"
    click_on "Back"
  end

  test "should update Test user" do
    visit test_user_url(@test_user)
    click_on "Edit this test user", match: :first

    fill_in "Desc", with: @test_user.desc
    fill_in "Email", with: @test_user.email
    fill_in "Name", with: @test_user.name
    click_on "Update Test user"

    assert_text "Test user was successfully updated"
    click_on "Back"
  end

  test "should destroy Test user" do
    visit test_user_url(@test_user)
    click_on "Destroy this test user", match: :first

    assert_text "Test user was successfully destroyed"
  end
end
