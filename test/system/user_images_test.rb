require "application_system_test_case"

class UserImagesTest < ApplicationSystemTestCase
  setup do
    @user_image = user_images(:one)
  end

  test "visiting the index" do
    visit user_images_url
    assert_selector "h1", text: "User Images"
  end

  test "creating a User image" do
    visit user_images_url
    click_on "New User Image"

    fill_in "Image", with: @user_image.image
    fill_in "User", with: @user_image.user_id
    fill_in "View Count", with: @user_image.view_count
    click_on "Create User image"

    assert_text "User image was successfully created"
    click_on "Back"
  end

  test "updating a User image" do
    visit user_images_url
    click_on "Edit", match: :first

    fill_in "Image", with: @user_image.image
    fill_in "User", with: @user_image.user_id
    fill_in "View Count", with: @user_image.view_count
    click_on "Update User image"

    assert_text "User image was successfully updated"
    click_on "Back"
  end

  test "destroying a User image" do
    visit user_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User image was successfully destroyed"
  end
end
