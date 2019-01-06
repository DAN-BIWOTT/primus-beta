require "application_system_test_case"

class StaffsTest < ApplicationSystemTestCase
  setup do
    @staff = staffs(:one)
  end

  test "visiting the index" do
    visit staffs_url
    assert_selector "h1", text: "Staffs"
  end

  test "creating a Staff" do
    visit staffs_url
    click_on "New Staff"

    fill_in "Address", with: @staff.address
    fill_in "Birthdate", with: @staff.birthDate
    fill_in "Department", with: @staff.department
    fill_in "Designation", with: @staff.designation
    fill_in "Education", with: @staff.education
    fill_in "Email", with: @staff.email
    fill_in "Firstname", with: @staff.firstName
    fill_in "Gender", with: @staff.gender
    fill_in "Image", with: @staff.image
    fill_in "Joindate", with: @staff.joinDate
    fill_in "Lastname", with: @staff.lastName
    fill_in "Password", with: 'secret'
    fill_in "Password Confirmation", with: 'secret'
    fill_in "Phonenumber", with: @staff.phoneNumber
    click_on "Create Staff"

    assert_text "Staff was successfully created"
    click_on "Back"
  end

  test "updating a Staff" do
    visit staffs_url
    click_on "Edit", match: :first

    fill_in "Address", with: @staff.address
    fill_in "Birthdate", with: @staff.birthDate
    fill_in "Department", with: @staff.department
    fill_in "Designation", with: @staff.designation
    fill_in "Education", with: @staff.education
    fill_in "Email", with: @staff.email
    fill_in "Firstname", with: @staff.firstName
    fill_in "Gender", with: @staff.gender
    fill_in "Image", with: @staff.image
    fill_in "Joindate", with: @staff.joinDate
    fill_in "Lastname", with: @staff.lastName
    fill_in "Password", with: 'secret'
    fill_in "Password Confirmation", with: 'secret'
    fill_in "Phonenumber", with: @staff.phoneNumber
    click_on "Update Staff"

    assert_text "Staff was successfully updated"
    click_on "Back"
  end

  test "destroying a Staff" do
    visit staffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Staff was successfully destroyed"
  end
end
