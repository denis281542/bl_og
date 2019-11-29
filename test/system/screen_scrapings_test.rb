require "application_system_test_case"

class ScreenScrapingsTest < ApplicationSystemTestCase
  setup do
    @screen_scraping = screen_scrapings(:one)
  end

  test "visiting the index" do
    visit screen_scrapings_url
    assert_selector "h1", text: "Screen Scrapings"
  end

  test "creating a Screen scraping" do
    visit screen_scrapings_url
    click_on "New Screen Scraping"

    click_on "Create Screen scraping"

    assert_text "Screen scraping was successfully created"
    click_on "Back"
  end

  test "updating a Screen scraping" do
    visit screen_scrapings_url
    click_on "Edit", match: :first

    click_on "Update Screen scraping"

    assert_text "Screen scraping was successfully updated"
    click_on "Back"
  end

  test "destroying a Screen scraping" do
    visit screen_scrapings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Screen scraping was successfully destroyed"
  end
end
