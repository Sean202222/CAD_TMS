require "application_system_test_case"

class TrainersTest < ApplicationSystemTestCase
  setup do
    @trainer = trainers(:one)
  end

  test "visiting the index" do
    visit trainers_url
    assert_selector "h1", text: "Trainers"
  end

  test "should create trainer" do
    visit trainers_url
    click_on "New trainer"

    fill_in "Address", with: @trainer.address
    fill_in "Dob", with: @trainer.dob
    fill_in "Email", with: @trainer.email
    fill_in "Fname", with: @trainer.fname
    fill_in "Lname", with: @trainer.lname
    fill_in "Phone", with: @trainer.phone
    fill_in "Position", with: @trainer.position
    click_on "Create Trainer"

    assert_text "Trainer was successfully created"
    click_on "Back"
  end

  test "should update Trainer" do
    visit trainer_url(@trainer)
    click_on "Edit this trainer", match: :first

    fill_in "Address", with: @trainer.address
    fill_in "Dob", with: @trainer.dob
    fill_in "Email", with: @trainer.email
    fill_in "Fname", with: @trainer.fname
    fill_in "Lname", with: @trainer.lname
    fill_in "Phone", with: @trainer.phone
    fill_in "Position", with: @trainer.position
    click_on "Update Trainer"

    assert_text "Trainer was successfully updated"
    click_on "Back"
  end

  test "should destroy Trainer" do
    visit trainer_url(@trainer)
    click_on "Destroy this trainer", match: :first

    assert_text "Trainer was successfully destroyed"
  end
end
