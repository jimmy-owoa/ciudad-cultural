require "application_system_test_case"

class Admin::MembersTest < ApplicationSystemTestCase
  setup do
    @admin_member = admin_members(:one)
  end

  test "visiting the index" do
    visit admin_members_url
    assert_selector "h1", text: "Admin/Members"
  end

  test "creating a Member" do
    visit admin_members_url
    click_on "New Admin/Member"

    fill_in "Email", with: @admin_member.email
    fill_in "Lastname", with: @admin_member.lastname
    fill_in "Name", with: @admin_member.name
    fill_in "Phone", with: @admin_member.phone
    fill_in "Summary", with: @admin_member.summary
    click_on "Create Member"

    assert_text "Member was successfully created"
    click_on "Back"
  end

  test "updating a Member" do
    visit admin_members_url
    click_on "Edit", match: :first

    fill_in "Email", with: @admin_member.email
    fill_in "Lastname", with: @admin_member.lastname
    fill_in "Name", with: @admin_member.name
    fill_in "Phone", with: @admin_member.phone
    fill_in "Summary", with: @admin_member.summary
    click_on "Update Member"

    assert_text "Member was successfully updated"
    click_on "Back"
  end

  test "destroying a Member" do
    visit admin_members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member was successfully destroyed"
  end
end
