class Offer < ApplicationRecord
  validates_presence_of :advertiser_name, :url, :description, :starts_at
  validates_uniqueness_of :advertiser_name, case_sensitive: false
  validates_length_of :description, maximum: 500
  validates_format_of :url, with: %r{(?:http(s)?://)?[\w.-]+(?:\.[\w.-]+)+[\w\-._~:/?#\[\]@!$&'()*+,;=]+}
end
