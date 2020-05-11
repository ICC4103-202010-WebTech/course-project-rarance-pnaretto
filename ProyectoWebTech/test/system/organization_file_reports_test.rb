require "application_system_test_case"

class OrganizationFileReportsTest < ApplicationSystemTestCase
  setup do
    @organization_file_report = organization_file_reports(:one)
  end

  test "visiting the index" do
    visit organization_file_reports_url
    assert_selector "h1", text: "Organization File Reports"
  end

  test "creating a Organization file report" do
    visit organization_file_reports_url
    click_on "New Organization File Report"

    click_on "Create Organization file report"

    assert_text "Organization file report was successfully created"
    click_on "Back"
  end

  test "updating a Organization file report" do
    visit organization_file_reports_url
    click_on "Edit", match: :first

    click_on "Update Organization file report"

    assert_text "Organization file report was successfully updated"
    click_on "Back"
  end

  test "destroying a Organization file report" do
    visit organization_file_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organization file report was successfully destroyed"
  end
end
