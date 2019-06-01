require 'spree_core'
require 'spree_extension'
require 'helpers/custom_configuration_in_gem'
require 'spree_gem_configuration/engine'
require 'spree_gem_configuration/version'
require 'spree_gem_configuration/configuration'

module SpreeGemConfiguration
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
