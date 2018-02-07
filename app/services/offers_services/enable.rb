module OffersServices
  class Enable
    attr_accessor :offers

    def initialize
      @offers = Offer.where('state = 0 and created_at = updated_at and starts_at <= ?', Date.today).pluck(:id)
    end

    def call
      enable_offers!
    end

    private

    def enable_offers!
      @offers.each_slice(100) do |ids|
        Offer.where(id: ids).update_all(state: 'enabled')
      end
    end

  end
end
