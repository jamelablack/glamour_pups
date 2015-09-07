require 'rails_helper'

describe 'Categories', type: :feature do
  let(:subdomain) { Rails.application.secrets.big_cartel_subdomain }
  let(:password) { Rails.application.secrets.big_cartel_password }

  before(:each) do
    stub_request(:get, "https://#{subdomain}:#{password}@api.bigcartel.com/v1/accounts/2270023/categories")
      .with(
        headers: {
          'Accept' => 'application/vnd.api+json',
          'Accept-Encoding' => 'gzip, deflate',
          'User-Agent' => 'Ruby'
        }
      ).to_return(status: 200, body: {
        "data" => [
          {
            "id" => "11593798",
            "attributes" => {
              "name" => "Happy",
              "position" => 1
             }
           }
          ]
        }.to_json, headers: {})
    end

    it "Shows categories details on the '/categories' page" do
      visit '/categories'

    within '.page_header h1' do
      expect(page).to have_content("Categories")
    end

    within '.category_id' do
      expect(page).to have_content '11593798'
    end

    within '.name' do
      expect(page).to have_content 'Happy'
    end

    within '.position' do
      expect(page).to have_content 1
    end
  end
end
