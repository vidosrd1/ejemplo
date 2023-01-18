require "application_system_test_case"

class BloksTest < ApplicationSystemTestCase
  setup do
    @blok = bloks(:one)
  end

  test "visiting the index" do
    visit bloks_url
    assert_selector "h1", text: "Bloks"
  end

  test "should create blok" do
    visit bloks_url
    click_on "New blok"

    fill_in "Body", with: @blok.body
    fill_in "Title", with: @blok.title
    click_on "Create Blok"

    assert_text "Blok was successfully created"
    click_on "Back"
  end

  test "should update Blok" do
    visit blok_url(@blok)
    click_on "Edit this blok", match: :first

    fill_in "Body", with: @blok.body
    fill_in "Title", with: @blok.title
    click_on "Update Blok"

    assert_text "Blok was successfully updated"
    click_on "Back"
  end

  test "should destroy Blok" do
    visit blok_url(@blok)
    click_on "Destroy this blok", match: :first

    assert_text "Blok was successfully destroyed"
  end
end
