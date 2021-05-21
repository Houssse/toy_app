require "application_system_test_case"

class MicropstsTest < ApplicationSystemTestCase
  setup do
    @micropst = micropsts(:one)
  end

  test "visiting the index" do
    visit micropsts_url
    assert_selector "h1", text: "Micropsts"
  end

  test "creating a Micropst" do
    visit micropsts_url
    click_on "New Micropst"

    fill_in "Content", with: @micropst.content
    fill_in "User", with: @micropst.user_id
    click_on "Create Micropst"

    assert_text "Micropst was successfully created"
    click_on "Back"
  end

  test "updating a Micropst" do
    visit micropsts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @micropst.content
    fill_in "User", with: @micropst.user_id
    click_on "Update Micropst"

    assert_text "Micropst was successfully updated"
    click_on "Back"
  end

  test "destroying a Micropst" do
    visit micropsts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Micropst was successfully destroyed"
  end
end
