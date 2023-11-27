# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'
require 'neo4j/railtie'

Bundler.require(*Rails.groups)

module Np
  class Application < Rails::Application
    # config.load_defaults 5.1
    config.generators { |g| g.orm :neo4j }
  end
end
