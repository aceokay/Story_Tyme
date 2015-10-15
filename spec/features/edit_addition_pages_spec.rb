require 'rails_helper'

describe "the edit an addition process" do
  it "edits an addition" do
    visit stories_path
    click_on "Add a New Story"
    fill_in 'Title', :with => "Deez Nuts"
    fill_in 'Starter sentence for your story', :with => "There was a man with peanuts."
    fill_in 'Your Name', :with => "Dee"
    click_on 'Submit'
    click_on "Deez Nuts"
    click_on "Add to this story!"
    fill_in 'Make Your Addition (only one sentence!)', :with => "So spoopy!"
    fill_in 'Your Name', :with => "Steve"
    click_on 'Submit'
    expect(page).to have_content "Steve"
    click_on "Edit Contribution"
    fill_in 'Your Name', :with => "Derp"
    click_on 'Submit'
    expect(page).to have_content "Derp"
  end
end
