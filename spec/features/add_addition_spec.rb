require 'rails_helper'

describe "the add an addition process" do
  it "adds an addition to a story" do
    visit stories_path
    click_on "Add a New Story"
    fill_in 'Title', :with => "Deez Nuts"
    fill_in 'Starter sentence for your story', :with => "There was a man with peanuts."
    fill_in 'Your Name', :with => "Dee"
    click_on 'Submit'
    expect(page).to have_content "Deez Nuts"
    click_on "Deez Nuts"
    click_on "Add to this story!"
    fill_in 'Make Your Addition (only one sentence!)', :with => "So spoopy!"
    fill_in 'Your Name', :with => "Steve"
    click_on 'Submit'
    expect(page).to have_content "So spoopy!"
  end

  it "gives error when no name is entered" do
    visit stories_path
    click_on "Add a New Story"
    fill_in 'Title', :with => "Deez Nuts"
    fill_in 'Starter sentence for your story', :with => "There was a man with peanuts."
    fill_in 'Your Name', :with => "Dee"
    click_on 'Submit'
    expect(page).to have_content "Deez Nuts"
    click_on "Deez Nuts"
    click_on "Add to this story!"
    click_on "Submit"
    expect(page).to have_content 'errors'
  end
end
