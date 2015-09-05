require 'rails_helper'

describe AccountService do
  let(:service) { described_class.new }
  let(:subdomain) { Rails.application.secrets.big_cartel_subdomain }
  let(:password) { Rails.application.secrets.big_cartel_password }
  let(:account) { double 'account' }

  let(:url) do
    "https://#{subdomain}:#{password}@api.bigcartel.com/v1/accounts"
  end

  let(:headers) do
    { :accept => 'application/vnd.api+json' }
  end

  let(:http_response) do
    {
      data: [
        {
          id: '42',
          attributes: {
            foo: 'bar',
            baz: 'quux'
          }
        }
      ]
    }.to_json
  end

  describe "#show" do
    it "should return a store's account" do
      expect(RestClient).to receive(:get)
        .with(url, headers) { http_response }

      expect(Account).to receive(:new)
        .with({ id: '42', foo: 'bar', baz: 'quux'}) { account }

      expect(service.show).to eql account
    end
  end
end
