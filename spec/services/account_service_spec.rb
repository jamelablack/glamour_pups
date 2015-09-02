require 'rails_helper'

describe AccountService do
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
      ).to_return(status: 200, body: {"data"=>
  [{"id"=>"2270023",
    "type"=>"accounts",
    "attributes"=>
     {"subdomain"=>"glamourpups",
      "store_name"=>"glamourpups",
      "description"=>"Who doesn't love puppies?!?!",
      "contact_email"=>"jamela.black@gmail.com",
      "url"=>"http://glamourpups.bigcartel.com",
      "website"=>nil,
      "created_at"=>"2015-08-28T23:21:50.000Z",
      "updated_at"=>"2015-09-01T11:40:05.000Z"},
    "links"=>{"self"=>"https://api.bigcartel.com/v1/accounts/2270023"},
    "relationships"=>
     {"currency"=>{"data"=>{"type"=>"currencies", "id"=>"USD"}},
      "country"=>{"data"=>{"type"=>"countries", "id"=>"US"}},
      "plan"=>{"data"=>{"type"=>"plans", "id"=>"gold"}},
      "account_image"=>{"data"=>nil},
      "orders"=>{"links"=>{"related"=>"https://api.bigcartel.com/v1/accounts/2270023/orders"}},
      "categories"=>
       {"links"=>
         {"self"=>"https://api.bigcartel.com/v1/accounts/2270023/relationships/categories",
          "related"=>"https://api.bigcartel.com/v1/accounts/2270023/categories"}},
      "products"=>
       {"links"=>
         {"self"=>"https://api.bigcartel.com/v1/accounts/2270023/relationships/products",
          "related"=>"https://api.bigcartel.com/v1/accounts/2270023/products"}}}}],
 "meta"=>{"count"=>"1"},
 "included"=>
  [{"id"=>"USD", "type"=>"currencies", "attributes"=>{"name"=>"U.S. Dollar", "sign"=>"$", "locale"=>"en-US"}},
   {"id"=>"US", "type"=>"countries", "attributes"=>{"name"=>"United States"}},
   {"id"=>"gold",
    "type"=>"plans",
    "attributes"=>{"max_products"=>5, "max_images_per_product"=>1, "name"=>"Gold", "monthly_rate"=>"0.0"}}],
 "links"=>{}}.to_json, headers: {})
  end



  describe ".show" do
    it "should return a store's account information" do
      account = described_class.show

      expect(account.id).to eq '2270023'
      expect(account.url).to eq "http://glamourpups.bigcartel.com"
    end
  end
end
