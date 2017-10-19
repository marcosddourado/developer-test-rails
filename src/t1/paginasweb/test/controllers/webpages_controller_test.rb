require 'test_helper'

class WebpagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @webpage = pages(:one)
  end

  test "should get new" do
    get webpages_new_url
    assert_response :success
  end

  test "should create webpage" do
    assert_difference('Webpage.count') do
      post webpages_url, params: { webpage: { author: @webpage.author, body: @webpage.body, created_at: @webpage.created_at, description: @webpage.description, title: @webpage.title, updated_at: @webpage.updated_at } }
    end

    assert_redirected_to webpage_url(Webpage.last)
  end

  test "should get index" do
    get webpages_url
    assert_response :success
  end

  test "should show webpage" do
    get webpage_url(@webpage)
    assert_response :success
  end

  test "should get edit" do
    get edit_webpage_url(@webpage)
    assert_response :success
  end

  test "should destroy webpage" do
    assert_difference('Webpage.count', -1) do
      delete webpage_url(@webpage)
    end

    assert_redirected_to webpages_url
  end
end
