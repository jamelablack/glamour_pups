require 'rails_helper'

describe CategoryService do
  let(:subdomain) { Rails.application.secrets.big_cartel_subdomain }
  let(:password) { Rails.application.secrets.big_cartel_password }

before(:each) do
    stub_request( :get, "https://#{subdomain}:#{password}@api.bigcartel.com/v1/accounts/2270023/categories")
      .with(
        headers:  {
          'Accept' => 'application/vnd.api+json',
          'Accept-Encoding' => 'gzip, deflate',
          'User-Agent' => 'Ruby'
        }
      ).to_return(status: 200, body: { "data"=> [
    {
      "id"=> "11593798",
      "type"=> "categories",
      "attributes"=> {
        "name"=> "Happy",
        "permalink"=> "happy",
        "position"=> 1
      },
      "links"=> {
        "self"=> "https://api.bigcartel.com/v1/accounts/2270023/categories/11593798"
      }
    },
    {
      "id"=> "11593801",
      "type"=> "categories",
      "attributes"=> {
        "name"=> "Sad",
        "permalink"=> "sad",
        "position"=> 2
      },
      "links"=> {
        "self"=> "https://api.bigcartel.com/v1/accounts/2270023/categories/11593801"
      }
    },
    {
      "id"=> "11593804",
      "type"=> "categories",
      "attributes"=> {
        "name"=> "Funny",
        "permalink"=> "funny",
        "position"=> 3
      },
      "links"=> {
        "self"=> "https://api.bigcartel.com/v1/accounts/2270023/categories/11593804"
      }
    },
    {
      "id"=> "11593807",
      "type"=> "categories",
      "attributes"=> {
        "name"=> "Warm & Fuzzies",
        "permalink"=> "warm-fuzzies",
        "position"=> 4
      },
      "links"=> {
        "self"=> "https://api.bigcartel.com/v1/accounts/2270023/categories/11593807"
      }
    },
    {
      "id"=> "11593867",
      "type"=> "categories",
      "attributes"=> {
        "name"=> "Thought Provoking",
        "permalink"=> "thought-provoking",
        "position"=> 5
      },
      "links"=> {
        "self"=> "https://api.bigcartel.com/v1/accounts/2270023/categories/11593867"
      }
    }
  ],
  "meta"=> {
    "count"=> "5"
  },
  "included"=> [],
  "links"=> {}}.to_json, headers: {})
  end



  describe ".all" do
    it "should return a store's categories" do
      categories = described_class.all

      expect(categories.first.id).to eq '11593798'
      expect(categories.first.name).to eq "Happy"
    end
  end
end
