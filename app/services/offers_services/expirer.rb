module OffersServices
  class Expirer
    attr_accessor :offers

    def initialize
      @offers = Offer.where('state = 1 and ends_at is not null and ends_at < ?', Date.today).pluck(:id)
    end

    def call
      expire_offers!
    end

    private

    def expire_offers!
      @offers.each_slice(100) do |ids|
        Offer.where(id: ids).update_all(state: 'disabled')
      end
    end

  end
end
