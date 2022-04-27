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

    fill_in "Adaptiveresp", with: @record.adaptiveResp
    fill_in "Autothoughtdesc", with: @record.autothoughtDesc
    fill_in "Autothoughtexp", with: @record.autothoughtExp
    fill_in "Emotionsdesc", with: @record.emotionsDesc
    fill_in "Emotionsrate", with: @record.emotionsRate
    fill_in "Entrylog", with: @record.entrylog
    fill_in "Outcomes", with: @record.outcomes
    fill_in "Situation", with: @record.situation
    fill_in "User", with: @record.user_id
    click_on "Create Record"

    assert_text "Record was successfully created"
    click_on "Back"
  end

  test "should update Record" do
    visit record_url(@record)
    click_on "Edit this record", match: :first

    fill_in "Adaptiveresp", with: @record.adaptiveResp
    fill_in "Autothoughtdesc", with: @record.autothoughtDesc
    fill_in "Autothoughtexp", with: @record.autothoughtExp
    fill_in "Emotionsdesc", with: @record.emotionsDesc
    fill_in "Emotionsrate", with: @record.emotionsRate
    fill_in "Entrylog", with: @record.entrylog
    fill_in "Outcomes", with: @record.outcomes
    fill_in "Situation", with: @record.situation
    fill_in "User", with: @record.user_id
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
