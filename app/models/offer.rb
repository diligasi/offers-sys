class Offer < ApplicationRecord
  validates_presence_of :advertiser_name, :url, :description, :starts_at
  validates_uniqueness_of :advertiser_name, case_sensitive: false
  validates_length_of :description, maximum: 500
  validates_format_of :url, with: %r{(?:http(s)?://)?[\w.-]+(?:\.[\w.-]+)+[\w\-._~:/?#\[\]@!$&'()*+,;=]+}

  STATE = %w[disabled enabled].freeze
  enum state: STATE

  before_create :set_disabled_state

  def opposite_state
    (STATE - [state]).first
  end

  def disabled?
    state == STATE[0]
  end

  def enabled?
    state == STATE[1]
  end

  private

  def set_disabled_state
    self.state = :disabled
  end
end
