require 'rails_helper'

describe "the delete a story process" do
  it "deletes a story" do
    visit stories_path
    click_on "Add a New Story"
    fill_in 'Title', :with => "Deez Nuts"
    fill_in 'Starter sentence for your story', :with => "There was a man with peanuts."
    fill_in 'Your Name', :with => "Dee"
    click_on 'Submit'
    click_on 'Deez Nuts'
    click_on 'Delete'
    expect(page).to_not have_content "Deez Nuts"
    expect(page).to have_content "Active Stories"
  end
end
