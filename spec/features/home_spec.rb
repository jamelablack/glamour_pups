require 'rails_helper'

describe 'Home page', type: :feature do
  let(:subdomain) { Rails.application.secrets.big_cartel_subdomain }
  let(:password) { Rails.application.secrets.big_cartel_password }

  before(:each) do
    stub_request(:get, "https://#{subdomain}:#{password}@api.bigcartel.com/v1/accounts")
      .with(
        headers: {
          'Accept' => 'application/vnd.api+json',
          'Accept-Encoding' => 'gzip, deflate',
          'User-Agent' => 'Ruby'
        }
      ).to_return(status: 200, body: {
        "data"=> [
          {
            "id"=>"2270023",
            "type"=>"accounts",
            "attributes"=> {
              "subdomain"=>"glamourpups",
              "store_name"=>"glamourpups",
              "description"=>"Who doesn't love puppies?!?!",
              "contact_email"=>"jamela.black@gmail.com",
              "url"=>"http://glamourpups.bigcartel.com",
              "website"=>nil,
              "created_at"=>"2015-08-28T23:21:50.000Z",
              "updated_at"=>"2015-09-01T11:40:05.000Z"
            }
          }
        ]
      }.to_json, headers: {})
  end

  it 'Shows account details on the home page' do
    visit '/home'

    within '.page_header h1' do
      expect(page).to have_content 'Account'
    end

    within '.account_id' do
      expect(page).to have_content '2270023'
    end

    within '.url' do
      expect(page).to have_content 'http://glamourpups.bigcartel.com'
    end

    within '.store_name' do
      expect(page).to have_content 'glamourpups'
    end

    within '.store_description' do
      expect(page).to have_content "Who doesn't love puppies?!?!"
    end

    within '.contact_email' do
      expect(page).to have_content 'jamela.black@gmail.com'
    end
  end
end
