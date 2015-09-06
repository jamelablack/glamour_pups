require 'rails_helper'

describe OrderService do
  let(:service) { described_class.new }
  let(:subdomain) { Rails.application.secrets.big_cartel_subdomain }
  let(:password) { Rails.application.secrets.big_cartel_password }
  let(:order) { double 'order' }
  let(:endpoint) { 'accounts/2270023/orders' }

  let(:url)do
    "https://#{subdomain}:#{password}@api.bigcartel.com/v1/#{endpoint}"
  end

  let(:headers) do
    { :accept => 'application/vnd.api+json' }
  end
  before(:each) do
    expect(RestClient).to receive(:get).with(url, headers) do
      {
        data: [
          {
            id: '123456',
            type: 'blah',
            attributes: {
              foo: 'bar',
              fizz: 'buzz'
            }
          }
        ]
      }.to_json
    end
  end

  describe "#all" do
    it "should return a store's orders" do
      expect(Order).to receive(:new)
        .with({ id: '123456', type: 'blah', foo: 'bar', fizz: 'buzz' }) {order }

      expect(service.all.first).to eql order

    end
  end
end
