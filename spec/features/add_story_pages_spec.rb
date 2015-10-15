require 'rails_helper'

describe "the add a story process" do
  it "adds a new story" do
    visit stories_path
    click_on "Add a New Story"
    fill_in 'Title', :with => "Deez Nuts"
    fill_in 'Starter sentence for your story', :with => "There was a man with nuts."
    fill_in 'Your Name', :with => "Dee"
    click_on 'Submit'
    expect(page).to have_content "Deez Nuts"
  end

  it "gives error when no name is entered" do
    visit new_story_path
    click_on "Submit"
    expect(page).to have_content 'errors'
  end
end
