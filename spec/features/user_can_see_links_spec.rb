require 'rails_helper'

RSpec.feature "User can visit homepage" do
  scenario "and see a list of links" do
    link1 = Link.create(url: "http://google.com")
    link2 = Link.create(url: "http://abc.go.com")

    visit root_path

    expect(page).to have_content("http://google.com")
    expect(page).to have_content("http://abc.go.com")
  end
end
