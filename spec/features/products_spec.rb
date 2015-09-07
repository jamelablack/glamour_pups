require 'rails_helper'

describe 'Products Page', type: :feature do
  let(:subdomain) { Rails.application.secrets.big_cartel_subdomain }
  let(:password) { Rails.application.secrets.big_cartel_password }

  before(:each) do
    stub_request(:get, "https://#{subdomain}:#{password}@api.bigcartel.com/v1/accounts/2270023/products")
      .with(
        headers: {
          'Accept' => 'application/vnd.api+json',
          'Accept-Encoding' => 'gzip, deflate',
          'User-Agent' => 'Ruby'
        }
    ).to_return(status: 200, body: {
      "data" => [
        {
          "id" => "28777534",
          "type" => "products",
          "attributes" => {
            "name" => "Lola",
            "status" => "coming_soon",
            "description" => "The only thing you'll love more than your pumpkin spice lattes! Coming this fall..",
            "default_price" => "5.0"
          }
        }
      ]
    }.to_json, headers: {})
  end

  it 'Shows product details on the product page' do
    visit '/products'

    within '.page_header h1' do
      expect(page).to have_content 'Products'
    end

    within '.product_id' do
      expect(page).to have_content '28777534'
    end

    within '.name' do
      expect(page).to have_content 'Lola'
    end

    within '.status' do
      expect(page).to have_content 'coming_soon'
    end

    within '.description' do
      expect(page).to have_content "The only thing you'll love more than your pumpkin spice lattes! Coming this fall.."
    end

    within '.default_price' do
      expect(page).to have_content '5.0'
    end
  end
end
