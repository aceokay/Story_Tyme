require 'rails_helper'

describe "the edit a story process" do
  it "edits a new story" do
    visit stories_path
    click_on "Add a New Story"
    fill_in 'Title', :with => "Deez Nuts"
    fill_in 'Starter sentence for your story', :with => "There was a man with nuts."
    fill_in 'Your Name', :with => "Dee"
    click_on 'Submit'
    click_on "Deez Nuts"
    click_on "Edit"
    fill_in 'Your Name', :with => "Derp"
    click_on 'Submit'
    expect(page).to have_content "Derp"
  end
end
