module HumaneRails
  class Engine < ::Rails::Engine
    isolate_namespace HumaneRails

    initializer "humane-rails.action_controller" do |app|
      ActiveSupport.on_load :action_controller do
        helper HumaneRails::FlashMessagesHelper if respond_to?(:helper)
      end
    end

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
