class Shipment < ActiveRecord::Base
#  include ActiveMerchant::Shipping

  validates :name, presence: true
  # validates :country, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :postal_code, presence: true
  validates :length, presence: true
  validates :width, presence: true
  validates :height, presence: true
  validates :weight, presence: true


  def origin
    Location.new(country: "US", state: "MN", city: "Stillwater", postal_code: "55082")
  end

  def destination
    Location.new(country: country, state: state, city: city, postal_code: postal_code)
  end

  def packages
    package = Package.new(weight, [length, width, height], units: :imperial, cylinder: cylinder)
  end

  def get_rates_from_shipper(shipper)
    response = shipper.find_rates(origin, destination, packages)
    response.rates.sort_by(&:price)
  end

  def ups_rates
    ups = UPS.new(login: 'srs3', password: '', key: '0D1CB3DBFB8CD028')
    get_rates_from_shipper(ups)
  end

  def fedex_rates
    fedex = FedEx.new(login: "118768312", password: "", key: "qPb6XoZX98bc4oEM", account: "510087461", test: true)
    get_rates_from_shipper(fedex)
  end

  def usps_rates
    usps = USPS.new(login: 'srs2015', password: '')
    get_rates_from_shipper(usps)
  end
end