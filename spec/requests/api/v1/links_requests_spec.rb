require 'rails_helper'

describe "Links API" do
  it "sends a list of urls" do
    link1 = Link.create(url: "http://backend.turing.io/module4/", count: 1)
    link2 = Link.create(url: "https://www.uber.com/", count: 4)

    get '/api/v1/links'

    expect(response).to be_success
    links = JSON.parse(response.body)
    link = links.first

    expect(links.count).to eq(2)
    expect(link).to have_key("url")
    expect(link).to have_key("count")
  end
end
