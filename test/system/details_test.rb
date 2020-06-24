require "application_system_test_case"

class DetailsTest < ApplicationSystemTestCase
  setup do
    @detail = details(:one)
  end

  test "visiting the index" do
    visit details_url
    assert_selector "h1", text: "Details"
  end

  test "creating a Detail" do
    visit details_url
    click_on "New Detail"

    fill_in "Address", with: @detail.address
    fill_in "Contact number", with: @detail.contact_number
    fill_in "First name", with: @detail.first_name
    fill_in "Last name", with: @detail.last_name
    fill_in "Organization", with: @detail.organization
    click_on "Create Detail"

    assert_text "Detail was successfully created"
    click_on "Back"
  end

  test "updating a Detail" do
    visit details_url
    click_on "Edit", match: :first

    fill_in "Address", with: @detail.address
    fill_in "Contact number", with: @detail.contact_number
    fill_in "First name", with: @detail.first_name
    fill_in "Last name", with: @detail.last_name
    fill_in "Organization", with: @detail.organization
    click_on "Update Detail"

    assert_text "Detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Detail" do
    visit details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Detail was successfully destroyed"
  end
end
