require 'rails_helper'

describe OrderService do
  let(:subdomain) { Rails.application.secrets.big_cartel_subdomain }
  let(:password) { Rails.application.secrets.big_cartel_password }

before(:each) do
    stub_request( :get, "https://#{subdomain}:#{password}@api.bigcartel.com/v1/accounts/2270023/orders")
      .with(
        headers:  {
          'Accept' => 'application/vnd.api+json',
          'Accept-Encoding' => 'gzip, deflate',
          'User-Agent' => 'Ruby'
        }
      ).to_return(status: 200, body: {
  "data"=> [
    {
      "id"=> "NGRP-090092",
      "type"=> "orders",
      "attributes"=> {
        "item_count"=> 1,
        "item_total"=> "0.25",
        "discount_total"=> "0.0",
        "shipping_total"=> "0.25",
        "tax_total"=> "0.0",
        "total"=> "0.5",
        "customer_first_name"=> "Wes",
        "customer_last_name"=> "Ketchum",
        "customer_email"=> "wesleyketchum@gmail.com",
        "customer_note"=> "Love me some Glamour Pups!",
        "shipping_address_1"=> "1390 Vst NW",
        "shipping_address_2"=> "308",
        "shipping_city"=> "Washington",
        "shipping_state"=> "District of Columbia",
        "shipping_zip"=> "20009",
        "shipping_status"=> "shipped",
        "shipping_latitude"=> 38.9192,
        "shipping_longitude"=> -77.0374,
        "completed_at"=> "2015-08-29T13=>03=>50.000Z",
        "updated_at"=> "2015-08-29T13=>06=>38.000Z",
        "created_at"=> "2015-08-29T13=>03=>50.000Z",
        "payment_status"=> "completed"
      },
      "links"=> {
        "self"=> "http://api.bigcartel.com/v1/accounts/2270023/orders/NGRP-090092"
      },
      "relationships"=> {
        "currency"=> {
          "data"=> {
            "type"=> "currencies",
            "id"=> "USD"
          }
        },
        "shipping_country"=> {
          "data"=> {
            "type"=> "countries",
            "id"=> "US"
          }
        },
        "events"=> {
          "data"=> [
            {
              "type"=> "order_events",
              "id"=> "324673351"
            },
            {
              "type"=> "order_events",
              "id"=> "324673621"
            }
          ]
        },
        "warnings"=> {
          "data"=> []
        },
        "items"=> {
          "data"=> [
            {
              "type"=> "order_line_items",
              "id"=> "539590702"
            }
          ]
        },
        "transactions"=> {
          "data"=> [
            {
              "type"=> "order_transactions/payments",
              "id"=> "65671420"
            }
          ]
        },
        "adjustments"=> {
          "data"=> [
            {
              "type"=> "order_adjustments/shipping",
              "id"=> "183796930"
            }
          ]
        }
      }
    },
    {
      "id"=> "ALXC-593391",
      "type"=> "orders",
      "attributes"=> {
        "item_count"=> 1,
        "item_total"=> "1.0",
        "discount_total"=> "0.0",
        "shipping_total"=> "1.0",
        "tax_total"=> "0.0",
        "total"=> "2.0",
        "customer_first_name"=> "Jam",
        "customer_last_name"=> "Black",
        "customer_email"=> "jamela.black@gmail.com",
        "customer_note"=> "Send now!",
        "shipping_address_1"=> "1390 V st NW",
        "shipping_address_2"=> "308",
        "shipping_city"=> "Washington",
        "shipping_state"=> "District of Columbia",
        "shipping_zip"=> "20009",
        "shipping_status"=> "shipped",
        "shipping_latitude"=> 38.9192,
        "shipping_longitude"=> -77.0374,
        "completed_at"=> "2015-08-29T12=>57=>30.000Z",
        "updated_at"=> "2015-08-29T13=>06=>40.000Z",
        "created_at"=> "2015-08-29T12=>57=>30.000Z",
        "payment_status"=> "completed"
      },
      "links"=> {
        "self"=> "http://api.bigcartel.com/v1/accounts/2270023/orders/ALXC-593391"
      },
      "relationships"=> {
        "currency"=> {
          "data"=> {
            "type"=> "currencies",
            "id"=> "USD"
          }
        },
        "shipping_country"=> {
          "data"=> {
            "type"=> "countries",
            "id"=> "US"
          }
        },
        "events"=> {
          "data"=> [
            {
              "type"=> "order_events",
              "id"=> "324672832"
            },
            {
              "type"=> "order_events",
              "id"=> "324673630"
            }
          ]
        },
        "warnings"=> {
          "data"=> []
        },
        "items"=> {
          "data"=> [
            {
              "type"=> "order_line_items",
              "id"=> "539589916"
            }
          ]
        },
        "transactions"=> {
          "data"=> [
            {
              "type"=> "order_transactions/payments",
              "id"=> "65671285"
            }
          ]
        },
        "adjustments"=> {
          "data"=> [
            {
              "type"=> "order_adjustments/shipping",
              "id"=> "183796555"
            }
          ]
        }
      }
    }
  ],
  "meta"=> {
    "count"=> "2"
  },
  "included"=> [
    {
      "id"=> "USD",
      "type"=> "currencies",
      "attributes"=> {
        "name"=> "U.S. Dollar",
        "sign"=> "$",
        "locale"=> "en-US"
      }
    },
    {
      "id"=> "US",
      "type"=> "countries",
      "attributes"=> {
        "name"=> "United States"
      }
    },
    {
      "id"=> "324673351",
      "type"=> "order_events",
      "attributes"=> {
        "created_at"=> "2015-08-29T13=>03=>50.000Z",
        "message"=> "Payment completed",
        "identifier"=> "payment_status"
      }
    },
    {
      "id"=> "324673621",
      "type"=> "order_events",
      "attributes"=> {
        "created_at"=> "2015-08-29T13=>06=>38.000Z",
        "message"=> "Marked as shipped",
        "identifier"=> "shipping_status"
      }
    },
    {
      "id"=> "539590702",
      "type"=> "order_line_items",
      "attributes"=> {
        "product_name"=> "Roxy",
        "product_option_name"=> "",
        "quantity"=> 1,
        "price"=> "0.25",
        "total"=> "0.25",
        "image_url"=> "http://images.bigcartel.com/bigcartel/product_images/163833568/-/120701-cute-puppy.jpg"
      },
      "relationships"=> {
        "product"=> {
          "data"=> {
            "type"=> "products",
            "id"=> "28713757"
          }
        },
        "product_option"=> {
          "data"=> {
            "type"=> "product_options",
            "id"=> "98995816"
          }
        }
      }
    },
    {
      "id"=> "65671420",
      "type"=> "order_transactions/payments",
      "attributes"=> {
        "amount"=> "0.5",
        "label"=> "Visa ending in 1938",
        "processor"=> "stripe",
        "processor_id"=> "ch_16f8zqIVfRceAQlJWQBYje7W",
        "processor_url"=> "http://dashboard.stripe.com/payments/ch_16f8zqIVfRceAQlJWQBYje7W"
      },
      "relationships"=> {
        "currency"=> {
          "data"=> {
            "type"=> "currencies",
            "id"=> "USD"
          }
        }
      }
    },
    {
      "id"=> "183796930",
      "type"=> "order_adjustments/shipping",
      "attributes"=> {
        "amount"=> "0.25",
        "label"=> "Shipping to United States"
      }
    },
    {
      "id"=> "324672832",
      "type"=> "order_events",
      "attributes"=> {
        "created_at"=> "2015-08-29T12=>57=>30.000Z",
        "message"=> "Payment completed",
        "identifier"=> "payment_status"
      }
    },
    {
      "id"=> "324673630",
      "type"=> "order_events",
      "attributes"=> {
        "created_at"=> "2015-08-29T13=>06=>40.000Z",
        "message"=> "Marked as shipped",
        "identifier"=> "shipping_status"
      }
    },
    {
      "id"=> "539589916",
      "type"=> "order_line_items",
      "attributes"=> {
        "product_name"=> "Rocko",
        "product_option_name"=> "",
        "quantity"=> 1,
        "price"=> "1.0",
        "total"=> "1.0",
        "image_url"=> "http://images.bigcartel.com/bigcartel/product_images/163835566/-/31-cute-puppies-that-you-want-to-hug-31.jpg"
      },
      "relationships"=> {
        "product"=> {
          "data"=> {
            "type"=> "products",
            "id"=> "28714411"
          }
        },
        "product_option"=> {
          "data"=> {
            "type"=> "product_options",
            "id"=> "98998054"
          }
        }
      }
    },
    {
      "id"=> "65671285",
      "type"=> "order_transactions/payments",
      "attributes"=> {
        "amount"=> "2.0",
        "label"=> "Visa ending in 1938",
        "processor"=> "stripe",
        "processor_id"=> "ch_16f8tiIVfRceAQlJ7NrmQu9f",
        "processor_url"=> "http://dashboard.stripe.com/payments/ch_16f8tiIVfRceAQlJ7NrmQu9f"
      },
      "relationships"=> {
        "currency"=> {
          "data"=> {
            "type"=> "currencies",
            "id"=> "USD"
          }
        }
      }
    },
    {
      "id"=> "183796555",
      "type"=> "order_adjustments/shipping",
      "attributes"=> {
        "amount"=> "1.0",
        "label"=> "Shipping to United States"
      }
    }
  ],
  "links"=> {}}.to_json, headers: {})
  end



  describe ".all" do
    it "should return a store's orders" do
      orders = described_class.all

      expect(orders.first.id).to eq 'NGRP-090092'
      expect(orders.first.customer_last_name).to eq "Ketchum"
    end
  end
end
