require 'test_helper'

class ScreenScrapingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @screen_scraping = screen_scrapings(:one)
  end

  test "should get index" do
    get screen_scrapings_url
    assert_response :success
  end

  test "should get new" do
    get new_screen_scraping_url
    assert_response :success
  end

  test "should create screen_scraping" do
    assert_difference('ScreenScraping.count') do
      post screen_scrapings_url, params: { screen_scraping: {  } }
    end

    assert_redirected_to screen_scraping_url(ScreenScraping.last)
  end

  test "should show screen_scraping" do
    get screen_scraping_url(@screen_scraping)
    assert_response :success
  end

  test "should get edit" do
    get edit_screen_scraping_url(@screen_scraping)
    assert_response :success
  end

  test "should update screen_scraping" do
    patch screen_scraping_url(@screen_scraping), params: { screen_scraping: {  } }
    assert_redirected_to screen_scraping_url(@screen_scraping)
  end

  test "should destroy screen_scraping" do
    assert_difference('ScreenScraping.count', -1) do
      delete screen_scraping_url(@screen_scraping)
    end

    assert_redirected_to screen_scrapings_url
  end
end
