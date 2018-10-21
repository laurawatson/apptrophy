require "application_system_test_case"

class CreateImagesTest < ApplicationSystemTestCase
  setup do
    @create_image = create_images(:one)
  end

  test "visiting the index" do
    visit create_images_url
    assert_selector "h1", text: "Create Images"
  end

  test "creating a Create image" do
    visit create_images_url
    click_on "New Create Image"

    fill_in "File", with: @create_image.file
    fill_in "User", with: @create_image.user_id
    fill_in "View Count", with: @create_image.view_count
    click_on "Create Create image"

    assert_text "Create image was successfully created"
    click_on "Back"
  end

  test "updating a Create image" do
    visit create_images_url
    click_on "Edit", match: :first

    fill_in "File", with: @create_image.file
    fill_in "User", with: @create_image.user_id
    fill_in "View Count", with: @create_image.view_count
    click_on "Update Create image"

    assert_text "Create image was successfully updated"
    click_on "Back"
  end

  test "destroying a Create image" do
    visit create_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Create image was successfully destroyed"
  end
end
