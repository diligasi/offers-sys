module RailsAdmin
  module Actions
    class ManageOfferState < RailsAdmin::Config::Actions::Base

      register_instance_option :member do
        true
      end

      register_instance_option :visible? do
        subject = bindings[:object]
        subject.is_a? Offer
      end

      register_instance_option :link_icon do
        subject = bindings[:object]
        subject.enabled? ? 'icon-circle-arrow-down' : 'icon-circle-arrow-up'
      end

      register_instance_option :controller do
        proc do
          if @object.enabled?
            @object.state = 'disabled'
            @object.save
          elsif (Date.today >= @object.starts_at && @object.ends_at.present? && Date.today <= @object.ends_at) ||
                (Date.today >= @object.starts_at && @object.ends_at.blank?)
            @object.state = 'enabled'
            @object.save
          end
          redirect_to :index
        end
      end

    end
  end
end