require 'rails_helper'

describe ProductService do
  let(:subdomain) { Rails.application.secrets.big_cartel_subdomain }
  let(:password) { Rails.application.secrets.big_cartel_password }

before(:each) do
    stub_request( :get, "https://#{subdomain}:#{password}@api.bigcartel.com/v1/accounts/2270023/products")
      .with(
        headers:  {
          'Accept' => 'application/vnd.api+json',
          'Accept-Encoding' => 'gzip, deflate',
          'User-Agent' => 'Ruby'
        }
      ).to_return(status: 200, body: {
  "data"=> [
    {
      "id"=> "28777534",
      "type"=> "products",
      "attributes"=> {
        "name"=> "Lola",
        "permalink"=> "lola",
        "status"=> "coming_soon",
        "description"=> "The only thing you'll love more than your pumpkin spice lattes! Coming this fall..",
        "created_at"=> "2015-09-01T11:40:05.000Z",
        "updated_at"=> "2015-09-01T11:40:05.000Z",
        "default_price"=> "5.0",
        "on_sale"=> false
      },
      "relationships"=> {
        "options"=> {
          "data"=> [
            {
              "type"=> "product_options",
              "id"=> "99229195"
            }
          ]
        },
        "categories"=> {
          "data"=> [
            {
              "type"=> "categories",
              "id"=> "11593807"
            }
          ]
        },
        "artists"=> {
          "data"=> []
        },
        "shipping_options"=> {
          "data"=> [
            {
              "type"=> "shipping_options",
              "id"=> "112476481"
            }
          ]
        },
        "images"=> {
          "data"=> [
            {
              "type"=> "product_images",
              "id"=> "164005900"
            }
          ]
        }
      }
    },
    {
      "id"=> "28714411",
      "type"=> "products",
      "attributes"=> {
        "name"=> "Rocko",
        "permalink"=> "rocko",
        "status"=> "sold_out",
        "description"=> "Pug with tongue sticking out.",
        "created_at"=> "2015-08-29T00:39:39.000Z",
        "updated_at"=> "2015-09-01T11:40:05.000Z",
        "default_price"=> "1.0",
        "on_sale"=> false
      },
      "relationships"=> {
        "options"=> {
          "data"=> [
            {
              "type"=> "product_options",
              "id"=> "98998054"
            }
          ]
        },
        "categories"=> {
          "data"=> [
            {
              "type"=> "categories",
              "id"=> "11593798"
            },
            {
              "type"=> "categories",
              "id"=> "11593804"
            }
          ]
        },
        "artists"=> {
          "data"=> []
        },
        "shipping_options"=> {
          "data"=> [
            {
              "type"=> "shipping_options",
              "id"=> "112309042"
            }
          ]
        },
        "images"=> {
          "data"=> [
            {
              "type"=> "product_images",
              "id"=> "163835566"
            }
          ]
        }
      }
    },
    {
      "id"=> "28714366",
      "type"=> "products",
      "attributes"=> {
        "name"=> "Wes",
        "permalink"=> "wes",
        "status"=> "active",
        "description"=> "\"It's been a long day.\"",
        "created_at"=> "2015-08-29T00:36:45.000Z",
        "updated_at"=> "2015-09-01T11:40:05.000Z",
        "default_price"=> "1.0",
        "on_sale"=> false
      },
      "relationships"=> {
        "options"=> {
          "data"=> [
            {
              "type"=> "product_options",
              "id"=> "98997916"
            }
          ]
        },
        "categories"=> {
          "data"=> [
            {
              "type"=> "categories",
              "id"=> "11593801"
            }
          ]
        },
        "artists"=> {
          "data"=> []
        },
        "shipping_options"=> {
          "data"=> [
            {
              "type"=> "shipping_options",
              "id"=> "112308913"
            }
          ]
        },
        "images"=> {
          "data"=> [
            {
              "type"=> "product_images",
              "id"=> "163835500"
            }
          ]
        }
      }
    },
    {
      "id"=> "28714345",
      "type"=> "products",
      "attributes"=> {
        "name"=> "Louis",
        "permalink"=> "louis",
        "status"=> "active",
        "description"=> "Cutest pic ever",
        "created_at"=> "2015-08-29T00:34:48.000Z",
        "updated_at"=> "2015-09-01T11:40:05.000Z",
        "default_price"=> "1.0",
        "on_sale"=> true
      },
      "relationships"=> {
        "options"=> {
          "data"=> [
            {
              "type"=> "product_options",
              "id"=> "98997817"
            }
          ]
        },
        "categories"=> {
          "data"=> [
            {
              "type"=> "categories",
              "id"=> "11593798"
            },
            {
              "type"=> "categories",
              "id"=> "11593807"
            }
          ]
        },
        "artists"=> {
          "data"=> []
        },
        "shipping_options"=> {
          "data"=> [
            {
              "type"=> "shipping_options",
              "id"=> "112308886"
            }
          ]
        },
        "images"=> {
          "data"=> [
            {
              "type"=> "product_images",
              "id"=> "163835359"
            }
          ]
        }
      }
    },
    {
      "id"=> "28713757",
      "type"=> "products",
      "attributes"=> {
        "name"=> "Roxy",
        "permalink"=> "roxy",
        "status"=> "sold_out",
        "description"=> "Cute yorkie in a blanket",
        "created_at"=> "2015-08-28T23:40:12.000Z",
        "updated_at"=> "2015-09-01T11:40:05.000Z",
        "default_price"=> "0.25",
        "on_sale"=> false
      },
      "relationships"=> {
        "options"=> {
          "data"=> [
            {
              "type"=> "product_options",
              "id"=> "98995816"
            }
          ]
        },
        "categories"=> {
          "data"=> [
            {
              "type"=> "categories",
              "id"=> "11593807"
            }
          ]
        },
        "artists"=> {
          "data"=> []
        },
        "shipping_options"=> {
          "data"=> [
            {
              "type"=> "shipping_options",
              "id"=> "112307860"
            }
          ]
        },
        "images"=> {
          "data"=> [
            {
              "type"=> "product_images",
              "id"=> "163833568"
            }
          ]
        }
      }
    }
  ],
  "meta"=> {
    "count"=> "5"
  },
  "included"=> [
    {
      "id"=> "99229195",
      "type"=> "product_options",
      "attributes"=> {
        "name"=> "Default",
        "price"=> "5.0",
        "quantity"=> 0,
        "sold"=> 0,
        "has_digital_file"=> false
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
      "id"=> "112476481",
      "type"=> "shipping_options",
      "attributes"=> {
        "price_alone"=> "1.0",
        "price_with_others"=> "0.5"
      },
      "relationships"=> {
        "country"=> {
          "data"=> {
            "type"=> "countries",
            "id"=> "US"
          }
        }
      }
    },
    {
      "id"=> "164005900",
      "type"=> "product_images",
      "attributes"=> {
        "url"=> "https://bigcartel.imgix.net/product_images/164005900/Funny_Puppy_Dog_-kqdO.jpg?fit=clip&w=1000&h=1000"
      },
      "links"=> {
        "self"=> "https://api.bigcartel.com/v1/accounts/2270023/product_images/164005900"
      }
    },
    {
      "id"=> "98998054",
      "type"=> "product_options",
      "attributes"=> {
        "name"=> "Default",
        "price"=> "1.0",
        "quantity"=> 0,
        "sold"=> 1,
        "has_digital_file"=> false
      }
    },
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
      "id"=> "112309042",
      "type"=> "shipping_options",
      "attributes"=> {
        "price_alone"=> "1.0",
        "price_with_others"=> "1.0"
      },
      "relationships"=> {
        "country"=> {
          "data"=> {
            "type"=> "countries",
            "id"=> "US"
          }
        }
      }
    },
    {
      "id"=> "163835566",
      "type"=> "product_images",
      "attributes"=> {
        "url"=> "https://bigcartel.imgix.net/product_images/163835566/31-cute-puppies-that-you-want-to-hug-31.jpg?fit=clip&w=1000&h=1000"
      },
      "links"=> {
        "self"=> "https://api.bigcartel.com/v1/accounts/2270023/product_images/163835566"
      }
    },
    {
      "id"=> "98997916",
      "type"=> "product_options",
      "attributes"=> {
        "name"=> "Default",
        "price"=> "1.0",
        "quantity"=> 0,
        "sold"=> 0,
        "has_digital_file"=> false
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
      "id"=> "112308913",
      "type"=> "shipping_options",
      "attributes"=> {
        "price_alone"=> "1.0",
        "price_with_others"=> "0.5"
      },
      "relationships"=> {
        "country"=> {
          "data"=> {
            "type"=> "countries",
            "id"=> "US"
          }
        }
      }
    },
    {
      "id"=> "163835500",
      "type"=> "product_images",
      "attributes"=> {
        "url"=> "https://bigcartel.imgix.net/product_images/163835500/unnamed.jpg?fit=clip&w=1000&h=1000"
      },
      "links"=> {
        "self"=> "https://api.bigcartel.com/v1/accounts/2270023/product_images/163835500"
      }
    },
    {
      "id"=> "98997817",
      "type"=> "product_options",
      "attributes"=> {
        "name"=> "Default",
        "price"=> "1.0",
        "quantity"=> 0,
        "sold"=> 0,
        "has_digital_file"=> false
      }
    },
    {
      "id"=> "112308886",
      "type"=> "shipping_options",
      "attributes"=> {
        "price_alone"=> "0.5",
        "price_with_others"=> "0.25"
      },
      "relationships"=> {
        "country"=> {
          "data"=> {
            "type"=> "countries",
            "id"=> "US"
          }
        }
      }
    },
    {
      "id"=> "163835359",
      "type"=> "product_images",
      "attributes"=> {
        "url"=> "https://bigcartel.imgix.net/product_images/163835359/White-Cute-Puppy-.jpg?fit=clip&w=1000&h=1000"
      },
      "links"=> {
        "self"=> "https://api.bigcartel.com/v1/accounts/2270023/product_images/163835359"
      }
    },
    {
      "id"=> "98995816",
      "type"=> "product_options",
      "attributes"=> {
        "name"=> "Default",
        "price"=> "0.25",
        "quantity"=> 0,
        "sold"=> 1,
        "has_digital_file"=> false
      }
    },
    {
      "id"=> "112307860",
      "type"=> "shipping_options",
      "attributes"=> {
        "price_alone"=> "0.25",
        "price_with_others"=> "0.25"
      },
      "relationships"=> {
        "country"=> {
          "data"=> {
            "type"=> "countries",
            "id"=> "US"
          }
        }
      }
    },
    {
      "id"=> "163833568",
      "type"=> "product_images",
      "attributes"=> {
        "url"=> "https://bigcartel.imgix.net/product_images/163833568/120701-cute-puppy.jpg?fit=clip&w=1000&h=1000"
      },
      "links"=> {
        "self"=> "https://api.bigcartel.com/v1/accounts/2270023/product_images/163833568"
      }
    }
  ],
  "links"=> {}}.to_json, headers: {})
  end



  describe ".all" do
    it "should return a store's products" do
      products = described_class.new.all

      expect(products.first.id).to eq "28777534"
      expect(products.first.name).to eq "Lola"
    end
  end
end
