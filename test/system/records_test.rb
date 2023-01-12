require "application_system_test_case"

class RecordsTest < ApplicationSystemTestCase
  setup do
    @record = records(:one)
  end

  test "visiting the index" do
    visit records_url
    assert_selector "h1", text: "Records"
  end

  test "should create record" do
    visit records_url
    click_on "New record"

    fill_in "Employee status", with: @record.employee_status
    fill_in "Employeeid", with: @record.employeeid
    fill_in "End date", with: @record.end_date
    fill_in "Prog title", with: @record.prog_title
    fill_in "Renewal date", with: @record.renewal_date
    fill_in "Start date", with: @record.start_date
    fill_in "Trainerid", with: @record.trainerid
    click_on "Create Record"

    assert_text "Record was successfully created"
    click_on "Back"
  end

  test "should update Record" do
    visit record_url(@record)
    click_on "Edit this record", match: :first

    fill_in "Employee status", with: @record.employee_status
    fill_in "Employeeid", with: @record.employeeid
    fill_in "End date", with: @record.end_date
    fill_in "Prog title", with: @record.prog_title
    fill_in "Renewal date", with: @record.renewal_date
    fill_in "Start date", with: @record.start_date
    fill_in "Trainerid", with: @record.trainerid
    click_on "Update Record"

    assert_text "Record was successfully updated"
    click_on "Back"
  end

  test "should destroy Record" do
    visit record_url(@record)
    click_on "Destroy this record", match: :first

    assert_text "Record was successfully destroyed"
  end
end
