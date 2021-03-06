require "application_system_test_case"

class SocialAccountsTest < ApplicationSystemTestCase
  setup do
    @social_account = social_accounts(:one)
  end

  test "visiting the index" do
    visit social_accounts_url
    assert_selector "h1", text: "Social Accounts"
  end

  test "creating a Social account" do
    visit social_accounts_url
    click_on "New Social Account"

    fill_in "Body", with: @social_account.body
    fill_in "Title", with: @social_account.title
    click_on "Create Social account"

    assert_text "Social account was successfully created"
    click_on "Back"
  end

  test "updating a Social account" do
    visit social_accounts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @social_account.body
    fill_in "Title", with: @social_account.title
    click_on "Update Social account"

    assert_text "Social account was successfully updated"
    click_on "Back"
  end

  test "destroying a Social account" do
    visit social_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Social account was successfully destroyed"
  end
end
