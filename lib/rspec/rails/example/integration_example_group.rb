require 'action_dispatch'
require 'capybara/rails'
require 'capybara/dsl'

module RSpec::Rails
  module IntegrationExampleGroup
    extend ActiveSupport::Concern

    include ActionDispatch::Integration::Runner
    include RSpec::Rails::TestUnitAssertionAdapter
    include ActionDispatch::Assertions
    include Capybara
    include RSpec::Matchers

    module InstanceMethods
      def app
        ::Rails.application
      end

      def last_response
        page
      end
    end

    included do
      metadata[:type] = :integration

      before do
        @router = ::Rails.application.routes
      end
    end

    RSpec.configure do |c|
      c.include self, :example_group => { :file_path => /\bspec\/integration\// }
    end
  end
end
