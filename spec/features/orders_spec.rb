require 'rails_helper'

describe 'Orders Page', type: :feature do
  let(:subdomain) { Rails.application.secrets.big_cartel_subdomain }
  let(:password) { Rails.application.secrets.big_cartel_password }

  before(:each) do
    stub_request(:get, "https://#{subdomain}:#{password}@api.bigcartel.com/v1/accounts/2270023/orders")
      .with(
        headers: {
          'Accept' => 'application/vnd.api+json',
          'Accept-Encoding' => 'gzip, deflate',
          'User-Agent' => 'Ruby'
        }
      ).to_return(status: 200, body: {
        "data" => [
          {
            "id" => "NGRP-090092",
            "type" => "orders",
            "attributes" => {
              "customer_last_name" => "Ketchum",
              "customer_email" => "wesleyketchum@gmail.com",
              "shipping_state" => "District of Columbia",
              "shipping_status" => "shipped"
              }
            }
          ]
        }.to_json, headers: {})
    end

  it "Shows an order's details on the '/orders' page" do
    visit '/orders'

    within '.page_header h1' do
      expect(page).to have_content 'Orders'
    end

    within '.order_id' do
      expect(page).to have_content 'NGRP-090092'
    end

    within '.type' do
      expect(page).to have_content 'orders'
    end

    within '.customer_last_name' do
      expect(page).to have_content('Ketchum')
    end

    within '.customer_email' do
      expect(page).to have_content('wesleyketchum@gmail.com')
    end

    within '.shipping_state' do
      expect(page).to have_content('District of Columbia')
    end

    within '.shipping_status' do
      expect(page).to have_content('shipped')
    end
  end
end


