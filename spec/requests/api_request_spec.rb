require 'spec_helper'

describe "renders account upon API request" do
  before(:each) do
    stub_request(:get, 'https://api.bigcartel.com')
      .with(
        header: {
          'Content-Type' => 'application/vnd.api+json; charset=utf-8:',
          'Accept' => 'application/vnd.api+json:'
          'Authorization' => 'Basic Z2xhbW91cnB1cHM6QmxpbmsxODQ='
        }
      ).to_return(
        status: 200,
        body:{
          {
            "data": [
              {
                "id" => "2270023",
                "type" => "accounts",
                "attributes" => {
                  "subdomain" => "glamourpups",
                  "store_name" => "glamourpups",
                  "description" => "Who doesn't love puppies?!?!",
                  "contact_email" => "jamela.black@gmail.com",
                  "url" => "http://glamourpups.bigcartel.com",
                  "website" => null,
                  "created_at" => "2015-08-28T23:21:50.000Z",
                  "updated_at" => "2015-08-31T13:49:22.000Z"
                }]
        }.to_json
      )
  end

  it "returns store account number" do
    response = RestClient.get ('https://api.bigcartel.com'
      content_type = 'application/vnd.api+json; charset=utf-8:',
      accept = 'application/vnd.api+json:'
      authorization = 'Basic Z2xhbW91cnB1cHM6QmxpbmsxODQ='
    expect(response.id).to eq('2270023')
    expect(response.status). to eq(200)
  end
end
