require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    add_new_user
    click_link "New post"
    fill_in "message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
    add_new_user("Test Man", "test2@testing.com")
    expect(page).to have_content("Posted by: Test Person")
  end
  scenario "Can submit posts and view them" do
    add_new_user
    click_link "New post"
    fill_in "message", with: "First post"
    click_button "Submit"
    click_link "New post"
    fill_in "message", with: "Second post"
    click_button "Submit"
    expect("Second post").to appear_before "First post"
  end
end
