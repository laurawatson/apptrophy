require 'test_helper'

class CreateImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_image = create_images(:one)
  end

  test "should get index" do
    get create_images_url
    assert_response :success
  end

  test "should get new" do
    get new_create_image_url
    assert_response :success
  end

  test "should create create_image" do
    assert_difference('CreateImage.count') do
      post create_images_url, params: { create_image: { file: @create_image.file, user_id: @create_image.user_id, view_count: @create_image.view_count } }
    end

    assert_redirected_to create_image_url(CreateImage.last)
  end

  test "should show create_image" do
    get create_image_url(@create_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_image_url(@create_image)
    assert_response :success
  end

  test "should update create_image" do
    patch create_image_url(@create_image), params: { create_image: { file: @create_image.file, user_id: @create_image.user_id, view_count: @create_image.view_count } }
    assert_redirected_to create_image_url(@create_image)
  end

  test "should destroy create_image" do
    assert_difference('CreateImage.count', -1) do
      delete create_image_url(@create_image)
    end

    assert_redirected_to create_images_url
  end
end
