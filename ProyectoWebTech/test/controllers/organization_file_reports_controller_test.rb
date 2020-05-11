require 'test_helper'

class OrganizationFileReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization_file_report = organization_file_reports(:one)
  end

  test "should get index" do
    get organization_file_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_organization_file_report_url
    assert_response :success
  end

  test "should create organization_file_report" do
    assert_difference('OrganizationFileReport.count') do
      post organization_file_reports_url, params: { organization_file_report: {  } }
    end

    assert_redirected_to organization_file_report_url(OrganizationFileReport.last)
  end

  test "should show organization_file_report" do
    get organization_file_report_url(@organization_file_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_organization_file_report_url(@organization_file_report)
    assert_response :success
  end

  test "should update organization_file_report" do
    patch organization_file_report_url(@organization_file_report), params: { organization_file_report: {  } }
    assert_redirected_to organization_file_report_url(@organization_file_report)
  end

  test "should destroy organization_file_report" do
    assert_difference('OrganizationFileReport.count', -1) do
      delete organization_file_report_url(@organization_file_report)
    end

    assert_redirected_to organization_file_reports_url
  end
end
